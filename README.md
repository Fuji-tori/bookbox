# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :books
- has_many :comments
- has_many :bookmarks

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
- has_many :comments
- has_many :bookmarks

## bookmarksテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true, null: false|
|book|references|foreign_key: true, null: false|

### Association
- belongs_to :user
- belongs_to :book

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true, null: false|
|book|references|foreign_key: true, null: false|
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :book