### ![GoFunロゴ](https://user-images.githubusercontent.com/62546610/82048311-69869800-96ef-11ea-8344-df7d4aebce3a.png)

### GoFun（ゴファン）というWebアプリケーションです。
ゴファンは、ごはんスポット投稿型SNSです。<br>
おススメごはんスポットを「Googleストリートビュー」を用いて投稿し、友達や家族と共有できます。<br>
さらに、投稿されたごはんスポットを見て、知って、コメントやいいねをつけて楽しむこともできます。<br>

---
### なぜゴファンを開発したか
・過去に、見知らぬ土地に行った際に、どこでご飯を食べようか迷って時間を無駄にしてしまう経験をしました。<br>
<br>
・友達や家族と予め、外食の場所・感想を共有していれば、<br>
　『そういえばこないだ○○さんが、渋谷に美味しい蕎麦屋があるって投稿してたな。そこに行ってみよう』と、<br>
　スムーズにご飯処を決めることが出来ると考えました。<br>
<br>
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
<br>

- ユーザー登録画面
<img width="738" alt="9cd2beac72d5400fecaee0f9cac12efc" src="https://user-images.githubusercontent.com/62546610/82051177-5d510980-96f4-11ea-8ec8-b45168866dea.png">
<br>

- ログイン画面
<img width="574" alt="0404bcc58d906bdf1583fcaf6bf5f5da" src="https://user-images.githubusercontent.com/62546610/82051483-e8320400-96f4-11ea-8bee-288f840515b3.png">
<br>

- 新規投稿画面
![79d017014df5900ed55b7bdfd78986dc](https://user-images.githubusercontent.com/62546610/82109692-f4f53d00-9772-11ea-9c9b-be45aa146fa8.jpg)
<br>

- 投稿一覧画面
![4fe9027a516763a41c9b0c901b2b6d9e](https://user-images.githubusercontent.com/62546610/82109451-fa518800-9770-11ea-92c9-8ce1cebc6231.gif)

下記を確認できます。<br>
・最新6投稿のスライド（各投稿の詳細画面に遷移できます）<br>
・投稿一覧（各投稿の詳細画面に遷移できます）
<br>

- 投稿詳細画面
![1b88de7dd3849d330e343e2dd7df0814](https://user-images.githubusercontent.com/62546610/82106988-5ca18d00-975f-11ea-847b-dd32dc28df67.gif)

　投稿されたGoogleストリートビュー・画像・本文が表示されます。<br>
　いいねボタンを押していいねをつけたり、コメントを送ることができます。
<br>

- ユーザー詳細画面
![ab2afd7b777ad90e830d3e45d2bccfc8](https://user-images.githubusercontent.com/62546610/82120052-63132180-97be-11ea-9d57-f9fc8ba87974.gif)

下記を確認出来ます。<br>
・profile画像<br>
・自身が投稿した数<br>
・自身の投稿一覧（各投稿の詳細画面に遷移できます）<br>
・いいねした数<br>
・いいねした（他ユーザーの）投稿一覧（各投稿の詳細画面に遷移できます）<br>
<br>
また、ユーザー情報編集画面に遷移できます。
<br>

---
### 注力した点
少しでも多くの方にアプリを末長く使っていただくため、サイト全体の見やすさ（から来る楽しさ）に注力しました。<br>
　・フォント・フォントサイズ・色づかいを統一し、ページ間で差が生じないようにしました。<br>
　・基本的にはモノトーンな色を使用し、差し色として一部にlightseagreenを使用しました。<br>
　・さらに、モノトーンで無機質な写真を背景に設定し、ユーザーが落ち着いて楽しめる空間にしました。<br>
　・font-awesomeを利用し、アカウント削除ボタンや、投稿編集ボタンを作り、<br>
　　ユーザーにとって直感的で分かりやすいものにしました。<br>
<br>
また、最新6投稿のスライドを表示させたり、投稿内容にGoogleストリートビューを盛り込むことで<br>
動的な楽しさもプラスしました。<br>

---
### 🌐 App URL
#### **https://tabeiku.herokuapp.com/**  

- テストアカウント<br>
  メールアドレス：test@test<br>
  パスワード：ttt000<br>

- 動作確認方法<br>
  Chromeの最新版を利用してアクセスしてください。<br>
  ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。<br>
  接続先およびログイン情報については、上記の通りです。<br>
  同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>

---
### 💬 クローン手順

`$ git clone https://github.com/mitsuhiko-y/gohan2.git`  

$ git clone https://github.com/mitsuhiko-y/gohan2.git<br>
$ cd hoge<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s<br>
👉 http://localhost:3000<br>
<br>

---
### 🤓 about me
https://twitter.com/777mountain

https://github.com/mitsuhiko-y

https://qiita.com/777mountain

---
### ツール

<img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" style="max-width:100%;">

<img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" style="max-width:100%;">
　　
<img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" style="max-width:100%;">
　
<img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" style="max-width:100%;">

<img src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/600614/4d2655e2-07fc-c442-e147-1f97ad10962a.png" height="60px" style="max-width:100%;">

<img src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/600614/dda4e560-0af8-d3cd-5375-96cbeb5b7a79.jpeg" height="60px;" style="max-width:100%;">

---
### DB設計

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