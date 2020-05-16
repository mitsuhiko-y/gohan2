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



アプリ名
説明（何が出来る物なのか）
使い方

構築やインストール方法
ライセンス
作者


## ![GoFunロゴ](https://user-images.githubusercontent.com/62546610/82048311-69869800-96ef-11ea-8344-df7d4aebce3a.png)

### GoFun（ゴファン）というWebアプリケーションです。
ゴファンは、ごはんスポット投稿型SNSです。
おススメごはんスポットを「Googleストリートビュー」を用いて投稿し、友達や家族と共有できます。
さらに、投稿されたごはんスポットを見て、知って、コメントやいいねをつけて楽しむこともできます。

### なぜゴファンを開発したか
・過去に、見知らぬ土地に行った際に、どこでご飯を食べようか迷って時間を無駄にしてしまう経験をしました。
・友達や家族と予め、外食の場所・感想を共有していれば、
　『そういえばこないだ○○さんが、渋谷に美味しい蕎麦屋があるって投稿してたな。そこに行ってみよう』と、
　スムーズにご飯処を決めることが出来ると考えました。
・既存SNSサービスにおいて既に誰もが実行している内容ではありますが、
　『生活の中で感じる"ちょっとした"不便でも、課題として敏感に感じとる力をつけていきたい。
　そして、その課題を解決出来るアプリケーションを自分の力でゼロから開発する力をつけたい』
　という想いから、開発しました。

### 主な機能
・投稿機能
・コメント機能
・いいね機能


### 使い方　（主要画面のキャプチャを用いて簡単に説明させていただきます）
・ユーザー新規登録（登録済の場合はログイン）をします。


![b0fe2e6f4a71e4b834b2e9542f34507f](https://user-images.githubusercontent.com/62546610/82048824-43adc300-96f0-11ea-9158-8d5e22a1cc25.jpg)

<img width="738" alt="9cd2beac72d5400fecaee0f9cac12efc" src="https://user-images.githubusercontent.com/62546610/82051177-5d510980-96f4-11ea-8ec8-b45168866dea.png">

<img width="574" alt="0404bcc58d906bdf1583fcaf6bf5f5da" src="https://user-images.githubusercontent.com/62546610/82051483-e8320400-96f4-11ea-8bee-288f840515b3.png">




・投稿詳細画面
　投稿されたGoogleストリートビュー・画像・本文が表示されます。
　いいねボタンを押していいねをつけたり、コメントを送ることが出来ます。

![1b88de7dd3849d330e343e2dd7df0814](https://user-images.githubusercontent.com/62546610/82106988-5ca18d00-975f-11ea-847b-dd32dc28df67.gif)

・ユーザー詳細画面
![e9f1a11b5798b20c5f6f8bd4bd01e1df](https://user-images.githubusercontent.com/62546610/82107419-71335480-9762-11ea-8ccf-765f4c3045a7.gif)

  下記を確認出来ます。
    profile画像
    自身が投稿した数
    自身の投稿一覧（各投稿の詳細画面に遷移できます）
    いいねした数
    いいねした（他ユーザーの）投稿一覧（各投稿の詳細画面に遷移できます）
  また、ユーザー情報編集画面に遷移出来ます。


## 🌐 App URL

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