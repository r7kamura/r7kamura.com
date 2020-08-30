---
title: Rails 6.0.2.2で生成したauthenticity_tokenは5.2.4.3で利用できるのか
---

## 結論

Rails 6.0で `Rails.configuration.action_dispatch.use_cookies_with_metadata = true` な状態で生成したCookieをSessionに利用する場合、5.2ではそのSessionを利用できないため、結果的にそのauthenticity_tokenは利用できない。

6.0への移行が完了してからcookieの設定の移行を行った方が良いし、もしローリングデプロイで同時に変更したい場合は、ELBでスティッキーセッションを有効化する等の対策をした方が良さそう。

## 背景

Rails 5.2.4.3からRails 6.0.2.2にアップグレードするにあたり、ActionController::InvalidAuthenticityTokenの例外が頻出するという事例を確認した。これを承けて、表題の件を検証することにした。

## 検証方法

Rails 6.0.2.2でアプリケーションを作成し、データベースを準備し、scaffoldを利用してUserモデルとそのフォーム画面等を用意し、アプリケーションサーバを起動する。

```
rails new _6.0.2.2_ my_app
cd my_app
rails g scaffold user name:string
rails db:setup db:migrate
rails s
```

http://localhost:3000/users/new にアクセスし、form要素が含まれたページを表示する。

アプリケーションサーバを一旦停止し、rails 5.2.4にダウングレードし、アプリケーションサーバを起動し、先ほど表示しておいたページからフォームを送信する。

```
vi Gemfile
bundle update --conservative \
  actionmailer \
  actionpack \
  actionview \
  activemodel \
  activerecord \
  activesupport \
  rails \
  railties
vi config/application.rb
rails s
```

すると、Rails 6.0.2.2で生成したauthenticity_tokenをRails 5.2.4.3で利用した場合、ActionController::InvalidAuthenticityTokenが発生することが分かった。

なお、Rails 5.2.4.3で生成したauthenticity_tokenは、Rails 6.0.2.2でも利用できることも分かった。

## 追記

この検証方法だと `use_cookies_with_metadata` がまず問題になることが分かったので、内容を編集しました。
