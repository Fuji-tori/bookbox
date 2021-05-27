# README


## usersテーブル
|Column      |Type  |Options    |
|------------|------|-----------|
|nickname    |string|null: false|
|email       |string|null: false, unique: true|
|password    |string|null: false|
|image_avatar|string||

### Association
- has_many :books
- has_many :comments
- has_many :bookmarks


## booksテーブル
|Column     |Type  |Options    |
|-----------|------|-----------|
|book_name  |string|null: false|
|author     |string|null: false|
|publication|string|null: false|
|image      |string|null: false|
|synopsis   |text  |null: false|
|review     |text  |null: false|
|genre      |string|null: false, foreign_key: true|

### Association
- has_many :comments
- has_many :bookmarks
- belongs_to :user
- belongs_to :book_genre


## book_genresテーブル
|Column  |Type      |Options    |
|--------|----------|-----------|
|name    |string    |null: false, index: true|
|book    |references|foreign_key: true|
|ancestry|string    ||

### Association
- has_many :books


## book_marksテーブル
|Column|Type      |Options    |
|------|----------|-----------|
|user  |references|foreign_key: true, null: false|
|book  |references|foreign_key: true, null: false|

### Association
- belongs_to :user
- belongs_to :book


## commentsテーブル
|Column|Type      |Options    |
|------|----------|-----------|
|user  |references|foreign_key: true, null: false|
|book  |references|foreign_key: true, null: false|
|text  |text      |null: false|

### Association
- belongs_to :user
- belongs_to :book