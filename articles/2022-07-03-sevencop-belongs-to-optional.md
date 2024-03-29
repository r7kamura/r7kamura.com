---
title: Sevencop/BelongsToOptional
---

Rails 5.0未満の時代につくられたアプリケーションの設定を改善するために、[Sevencop/BelongsToOptional](https://github.com/r7kamura/sevencop#sevencopbelongstooptional)というカスタムCopを便利に使っている。

## 背景

Rails 5.0以上で `rails new` した場合は、次のような設定が自動的に用意される。

```ruby
load_defaults 5.0
```

このコードにより、内部的には次のような設定がなされている。

```ruby
Rails.configuration.active_record.belongs_to_required_by_default = true
```

この設定が何をしてくれるかというと、モデルで次のように書いたとき、

```ruby
belongs_to :user
```

自動的に、次のようなValidationが定義される。

```ruby
validates :user, presence: true
```

Rails 4.2以前からつくられているRailsアプリケーションでは、このようなデフォルト設定は無かったから、この設定をいきなり有効化するとぶっ壊れてしまう。こういう事情から、Rails 4.2から5.0以降に上げながらも `load_defaults 5.0` を追加してRails標準の設定に近付けていくために、次のようにとりあえず無効化しながら設定をアップグレードしたあと、放置しているRailsアプリが多いと思う。

```ruby
load_defaults 5.0

# FIXME
config.active_record.belongs_to_required_by_default = false
```

しかしこれだと「新しく `belongs_to` を書くときは基本的には `optional: false` を付けましょう」みたいなルールの統制が必要になってしまう。

ここで「既存のすべての `belongs_to` に `optional: true` 付けて設定変えたら良いんじゃね？」となるのは自然な発想だが、手作業で田植えのようにオプションを付けて回るのは、大変であるし見落としも発生しそうで怖い。そこで「RuboCopで機械的に検出して自動的に置換しようや」という考えでつくったのがSevencop/BelongsToOptionalというCop。

## 使い方

次のように実行すると、全てを書き換えてくれる。

```
rubocop --auto-correct --only Sevencop/BelongsToOptional
```

常用するCopではないと思うので、sevencopは一時的に手元に入れて置換用途で使うことだけを想定している。
