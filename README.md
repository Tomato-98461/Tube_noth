# README

## DB設計 - 各テーブル

#### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

**Association**
- has_many :posts


#### postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|text|text||
|user_id|integer|null: false, foreign_key: true|
|tube_id|integer|null: false, foreign_key: true|

**Association**
- belongs_to :user
- belongs_to :tube

#### tubesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|tag|string|null: false|
|thmb|string|null: false|

**Association**
- belongs_to :posts


<!-- #### favos_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

**Association**
- belongs_to :user
- belongs_to :post -->

<!-- 
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
