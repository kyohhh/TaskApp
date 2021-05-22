# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :lists

## listsテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| list_title | string     | null: false                    |
| user_id    | references | null: false, foreign_key: true |

### Association

- has_many :cards
- belongs_to :user

## cardsテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| card_title | string     | null: false                    |
| memo       | text       | null: false                    |
| list_id    | references | null: false, foreign_key: true |

### Association

- belongs_to :list
