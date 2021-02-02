# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ---------------    | ------ | -----------              |
| name               | string | null: false              |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |
| last_name          | string | null: false              |
| first_name         | string | null: false              |
| last_name_kana     | string | null: false              |
| first_name_kana    | string | null: false              |
| birth_day          | date   | null: false              |

### Association
- has_many :items
- has_many :comments
- has_many :orders

## items テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| name               | string      | null:false                    |
| description        | text        | null:false                    |
| category_id        | integer     | null:false                    |
| state_id           | integer     | null:false                    |
| carriage_id        | integer     | null:false                    |
| area_id            | integer     | null:false                    |
| days_id            | integer     | null:false                    |
| price              | integer     | null:false                    |
| user               | references  | null:false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one :order

## comments テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| text               | string      | null:false                    |
| user               | references  | null:false, foreign_key: true |
| item               | references  | null:false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

## addresses テーブル

| Column             | Type        | Options                       |
| ------------------ | -------     | ----------------------------- |
| post_code          | string      | null:false                    |
| prefecture_id      | integer     | null:false                    |
| city               | string      | null:false                    |
| house_number       | string      | null:false                    |
| building_name      | string      |                               |
| phone_number       | string      | null:false                    |
| order              | references  | null:false, foreign_key: true |

### Association
- belongs_to :order

## orders テーブル

| Column             | Type        | Options                       |
| ------- | ------- | ----------------------------- |
| user_id | integer | null:false                    |
| item_id | integer | null:false                    |

### Association
- has_one :address
- belongs_to :user
- belongs_to :item

