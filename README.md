# README
## Users
| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_kananame     | string | null: false               |
| last_kananame      | string | null: false               |
| birthday           | date   | null: false               |
### Association
- has_many :items
- has_many :orders

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
| sales_status_id        | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |
| sold                   | boolean    | null: false                    |
### Association
- belongs_to :user
- has_one :order

## Orders
| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :item
- has_one :shipping_address

## Shipping_addresses
| Column         | Type       | Options                        |
|----------------|------------|--------------------------------|
| post_code      | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| municipalities | string     | null: false                    |
| address        | string     | null: false                    |
| building       | string     |                                |
| phone_number   | string     | null: false                    |
| order          | references | null: false, foreign_key: true |
### Association
- belongs_to :order