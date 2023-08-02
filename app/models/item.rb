class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :schedule

  validates :name, presence: true
  validates :explanation, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :price , presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :shipping_fee_status_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :schedule_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :sales_status_id, numericality: { other_than: 1, message: "can't be blank" }
end
