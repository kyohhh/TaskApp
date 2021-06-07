# アプリ名
===
TaskApp

## 概要
===
タスク管理ができるアプリケーションです。
タスクをリスト化し管理、リストの中にはそのタスクを細分化できるカード機能、カード機能には詳細をメモすることができます。


![Alt text](/TaskApp/to/TaskAppREADME用.png)

## URL
===
https://taskapp20210519.herokuapp.com/

## 目指した課題解決
現代人のほぼすべての人は、日々、プライベートや仕事など様々なタスクに追われています。
その中で全てのタスクを忘れずにこなしていかなければならない。
そんな課題を解決するために作成しました。


## 使用技術
===
- Ruby 2.6.5
- Ruby on Rails6.0.0
- MySQL2 0.4.4
- Puma
- Heroku
- Rspec



# テーブル設計
===

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

## ER図
===
![Alt text](/TaskApp/to/ER.png)



## 機能一覧
===
- ユーザー登録、ログイン機能(devise)
- ゲストユーザー機能(devise)
- リスト作成・編集機能
- カード作成・編集・移動機能
- アカウント編集機能
