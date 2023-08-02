class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
  end

  def new
    @item = Item.new
  end

  def create
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :explanation, :category_id, :price, :shipping_fee_status_id, :prefecture_id, :schedule_id, :sales_status_id).merge(user_id: current_user.id)
  end
end
