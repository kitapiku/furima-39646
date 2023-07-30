class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :password, presence: true, format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]+\z/, message: "should be in mixed alphanumeric characters" }
  validates :first_name, presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[一-龠々])+\z/, message: "should be a full-width name" }
  validates :last_name, presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[一-龠々])+\z/, message: "should be a full-width name" }
  validates :first_kananame, presence: true, format: { with: /\A(?:\p{Katakana})+\z/, message: "should be a full-width katakana name" }
  validates :last_kananame, presence: true, format: { with: /\A(?:\p{Katakana})+\z/, message: "should be a full-width katakana name" }
  validates :birthday, presence: true

end
