# README
## Users
| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| kananame           | string | null: false               |
| birthday           | string | null: false               |
### Association
- has_many :items
- has_many :orders
- has_many :cards

## Items
| Column                 | Type       | Options                        |
|------------------------|------------|--------------------------------|
| name                   | string     | null: false                    |
| explanation            | text       | null: false                    |
| category_id            | integer    | null: false                    |
| price                  | integer    | null: false                    |
| shipping_fee_status_id | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| schedule_id            | integer    | null: false                    |
| sales_status           | integer    | null: false                    |
| user_id                | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_one :order

## Orders
| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| user_id | references | null: false, foreign_key: true |
| item_id | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :item
- has_one :card
- has_one :Shipping_address

## Cards
| Column         | Type       | Options                        |
|----------------|------------|--------------------------------|
| customer_token | string     | null: false                    |
| user_id        | references | null: false, foreign_key: true |
| order_id       | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :order

## Shipping_address
| Column         | Type       | Options                        |
|----------------|------------|--------------------------------|
| post_code      | integer    | null: false                    |
| prefecture_id  | integer    | null: false                    |
| municipalities | string     | null: false                    |
| address        | string     | null: false                    |
| building       | string     | null: false                    |
| phone_number   | integer    | null: false                    |
| order_id       | references | null: false, foreign_key: true |
### Association
- belongs_to :order