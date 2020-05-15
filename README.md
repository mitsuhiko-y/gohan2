# README

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

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|integer|null: false|
|image|string||
### Association
- has_many :posts
- has_many :comments
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|shopname|string|null: false|
|view|text|null: false|
|content|text|null: false|
|image|string||
### Association
- belongs_to :user
- has_many :comments
- has_many :likes

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post





### **https://tabeiku.herokuapp.com/**  
　
## 💬 Usage

`$ git clone https://github.com/mitsuhiko-y/gohan2.git`  

$ git clone https://github.com/mitsuhiko-y/gohan2.git
$ cd hoge
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉 http://localhost:3000
　
## :art: Character Design

<p align="center">
  <img src="https://〜.png" width=70%>  
</p>　

## 📦 Features

<h3 align="center">- PWA -</h3>

<p align="center">
  <img src="https://〜.jpg" width=40%>
</p>