### ![GoFunロゴ](https://user-images.githubusercontent.com/62546610/82048311-69869800-96ef-11ea-8344-df7d4aebce3a.png)

### GoFun（ゴファン）というWebアプリケーションです。
ゴファンは、ごはんスポット投稿型SNSです。<br>
おススメごはんスポットを「Googleストリートビュー」を用いて投稿し、友達や家族と共有できます。<br>
さらに、投稿されたごはんスポットを見て、知って、コメントやいいねをつけて楽しむこともできます。<br>

---
### なぜゴファンを開発したか
・過去に、見知らぬ土地に行った際に、どこでご飯を食べようか迷って時間を無駄にしてしまう経験をしました。<br>
・友達や家族と予め、外食の場所・感想を共有していれば、<br>
　『そういえばこないだ○○さんが、渋谷に美味しい蕎麦屋があるって投稿してたな。そこに行ってみよう』と、<br>
　スムーズにご飯処を決めることが出来ると考えました。<br>
・ご飯情報を共有することは既存SNSサービスにおいて既に誰もが実行している内容ではありますが、<br>
　**『生活の中で感じる"ちょっとした"不便でも、課題として敏感に感じとる力をつけていきたい。**<br>
　**そして、その課題を解決出来るアプリケーションを自分の力でゼロから開発する力をつけたい。**<br>
　**課題解決力をつけたい』**<br>
　という想いから、開発しました。

---
### 主な機能
・投稿機能<br>
・コメント機能<br>
・いいね機能

---
### 主要画面のキャプチャ・簡単な説明
- トップ画面
<img width="904" alt="9ff7d1288658cf30af98b879c6bed470" src="https://user-images.githubusercontent.com/62546610/82109736-60d7a580-9773-11ea-908e-10a82f026530.png">

- ユーザー登録画面
<img width="738" alt="9cd2beac72d5400fecaee0f9cac12efc" src="https://user-images.githubusercontent.com/62546610/82051177-5d510980-96f4-11ea-8ec8-b45168866dea.png">

- ログイン画面
<img width="574" alt="0404bcc58d906bdf1583fcaf6bf5f5da" src="https://user-images.githubusercontent.com/62546610/82051483-e8320400-96f4-11ea-8bee-288f840515b3.png">

- 投稿詳細画面
![1b88de7dd3849d330e343e2dd7df0814](https://user-images.githubusercontent.com/62546610/82106988-5ca18d00-975f-11ea-847b-dd32dc28df67.gif)

　投稿されたGoogleストリートビュー・画像・本文が表示されます。<br>
　いいねボタンを押していいねをつけたり、コメントを送ることができます。

- 新規投稿画面
![79d017014df5900ed55b7bdfd78986dc](https://user-images.githubusercontent.com/62546610/82109692-f4f53d00-9772-11ea-9c9b-be45aa146fa8.jpg)

- 投稿一覧画面
![4fe9027a516763a41c9b0c901b2b6d9e](https://user-images.githubusercontent.com/62546610/82109451-fa518800-9770-11ea-92c9-8ce1cebc6231.gif)

下記を確認できます。<br>
・最新6投稿のスライド（各投稿の詳細画面に遷移できます）<br>
・投稿一覧（各投稿の詳細画面に遷移できます）

---
- ユーザー詳細画面
![e9f1a11b5798b20c5f6f8bd4bd01e1df](https://user-images.githubusercontent.com/62546610/82107419-71335480-9762-11ea-8ccf-765f4c3045a7.gif)

下記を確認出来ます。<br>
・profile画像<br>
・自身が投稿した数<br>
・自身の投稿一覧（各投稿の詳細画面に遷移できます）<br>
・いいねした数<br>
・いいねした（他ユーザーの）投稿一覧（各投稿の詳細画面に遷移できます）<br>
また、ユーザー情報編集画面に遷移できます。

---
### 🌐 App URL
#### **https://tabeiku.herokuapp.com/**  
　
---
### 💬 クローン手順

`$ git clone https://github.com/mitsuhiko-y/gohan2.git`  

$ git clone https://github.com/mitsuhiko-y/gohan2.git
$ cd hoge
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s
👉 http://localhost:3000

---
### 🤓 about me
https://twitter.com/777mountain

https://github.com/mitsuhiko-y

https://qiita.com/777mountain




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