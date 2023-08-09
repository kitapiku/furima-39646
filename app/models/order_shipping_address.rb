class OrderShippingAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :prefecture_id, :municipalities, :address, :building, :phone_number,
                :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'が不正です。ハイフンを含めて入力してください' }
    validates :prefecture_id, numericality: { other_than: 1, message: 'を入力してください' }
    validates :municipalities
    validates :address
    validates :phone_number, numericality: { only_integer: true, message: 'は数字で入力し、ハイフンを含めないでください' }, length: { in: 10..11 }
    validates :token
  end

  def purchase
    order = Order.create(user_id:, item_id:)
    ShippingAddress.create(post_code:,
                           prefecture_id:,
                           municipalities:,
                           address:,
                           building:,
                           phone_number:,
                           order_id: order.id)
  end
end
