class Item < ApplicationRecord
  belongs_to :user
  has_one :order
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :schedule

  validates :images, presence: true, length: { minimum: 1, maximum: 5, message: 'は1枚以上5枚以下にしてください' }
  validates :name, presence: true
  validates :explanation, presence: true
  validates :category_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :price, presence: true,
                    numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, only_integer: true }
  validates :shipping_fee_status_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :prefecture_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :schedule_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :sales_status_id, numericality: { other_than: 1, message: 'を入力してください' }
  validates :sold, inclusion: { in: [true, false] }
end
