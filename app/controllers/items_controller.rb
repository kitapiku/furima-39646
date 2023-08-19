class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit]
  before_action :set_maincategories, only: [:new, :create, :edit, :update]
  before_action :set_category, only: [:show, :edit, :update]

  def index
    @items = Item.all.order(created_at: :DESC)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.sold = false
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    redirect_to action: :index if @item.sold
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    item = Item.find(params[:id])
    redirect_to action: :index unless current_user == item.user
    item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :explanation, :price, :shipping_fee_status_id,
                                 :prefecture_id, :schedule_id, :sales_status_id, { images: [] }).merge(user_id: current_user.id, category_id: params[:category_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    return if current_user == @item.user

    redirect_to action: :index
  end

  def set_category
    @grandchild_category = Category.find(@item.category_id)
    @child_category = @grandchild_category.parent
    @parent_category = @child_category.parent
  end

  def set_maincategories
    @maincategories = Category.all.order('id ASC').limit(13)
  end
end
