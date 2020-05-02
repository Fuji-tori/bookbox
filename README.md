# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :items

## booksテーブル
|Column|Type|Options|
|------|----|-------|
|bookname|string|null: false|
|genre|string|null: false|
|author|string|null: false|
|text|string|null: false|
|image|text|null: false|
|review|text|null: false|

### Association
- belongs_to :user