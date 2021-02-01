# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| name            | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| last_name       | string | null: false |
| first_name      | string | null: false |
| last_name_kana  | string | null: false |
| first_name_kana | string | null: false |
| birth_day       | date | null: false   |

### Asociation
- has_many :items
- has_many :comments
- has_one :order

## items テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| name               | string      | null:false                    |
| description        | text        | null:false                    |
| category           | string      | null:false                    |
| state              | string      | null:false                    |
| carriage           | string      | null:false                    |
| area               | string      | null:false                    |
| days               | string      | null:false                    |
| price              | integer     | null:false                    |
| image              | string      | null:false                    |
| user_id            | references  | null:false, foreign_key: true |

### Asociation
- belongs_to :user
- has_many :comments

## comments テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| text               | string      | null:false                    |
| user_id            | references  | null:false, foreign_key: true |
| item_id            | references  | null:false, foreign_key: true |

### Asociation
- belomgs_to :user
- belomgs_to :item

## orders テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| card_number        | integer     | null:false                    |
| expiration_date    | integer     | null:false                    |
| security           | integer     | null:false                    |
| post_code          | integer     | null:false                    |
| prifecture         | string      | null:false                    |
| city               | string      | null:false                    |
| house_number       | integer     | null:false                    |
| building_name      | integer     |                               |
| phone_number       | integer     | null:false                    |
| user_id            | references  | null:false, foreign_key: true |

### Asociation
- belongs_to :user