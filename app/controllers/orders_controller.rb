class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :item_set
  before_action :move_to_index

  def index
    gon.public_key = ENV['PAYJP_PUBLIC_KEY']
    @order_shipping_address = OrderShippingAddress.new
  end

  def create
    @order_shipping_address = OrderShippingAddress.new(order_shipping_address_params)
    if @order_shipping_address.valid?
      @order_shipping_address.purchase
      @item.sold = true
      @item.save
      pay_item
      redirect_to root_path
    else
      gon.public_key = ENV['PAYJP_PUBLIC_KEY']
      render :index, status: :unprocessable_entity
    end
  end

  private

  def order_shipping_address_params
    params.require(:order_shipping_address)
          .permit(:post_code, :prefecture_id, :municipalities, :address, :building, :phone_number)
          .merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: params[:token],
      currency: 'jpy'
    )
  end

  def item_set
    @item = Item.find(params[:item_id])
  end

  def move_to_index
    return unless current_user == @item.user || @item.sold

    redirect_to root_path
  end
end
