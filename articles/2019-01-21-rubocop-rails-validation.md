---
title: RuboCopのRails/Validationの改善
---

https://github.com/rubocop-hq/rubocop/pull/6689 の話です。

## Rails/Validation

Ruby 向けの静的解析ツールであるところの RuboCop には、現在のところ主に Rails に特化した Cop の定義も幾つか含まれており、その中に Rails/Validation という Cop があります。これは ActiveModel::Validations の提供する機能を利用する際、その書き方を統一しようというものです。

そもそも ActiveModel::Validations では、同じ Validation を定義するのにも二種類の書き方があります。ひとつは Rails 4.1 以前から存在した書き方で、validates_numericarity_of :a のように利用します。もうひとつは Rails 4.2 以降に追加された記法で、validates :a, numericality: true のように利用します。

## 不具合

今回着目したいのは、この Cop の auto-correct の不具合です。auto-correct 対象の旧スタイルのメソッドの引数にもし splat operator が含まれていると、auto-correct の最中に例外が発生します。また少し古いバージョンの RuboCop では、例外こそ発生しないものの、修正結果が良くないコードになってしまっていました。

自分のアプリケーションで RuboCop を利用しているときにこの不具合に気付いたので、RuboCop の実装を読んでみたところ、どうやら引数末尾に与えられているかもしれないオプションを探索する部分で失敗しているようでした。

引数を先頭からひとつずつ調べていって、sym_type? というメソッドで調べて Symbol でなければオプションである、という実装なのですが、splat operator のように sym_type? が呼び出せないノードも存在する上に、Symbol でない引数だからと言ってそれが末尾のオプションであるとは限らない、という問題があるように考えました。またこの実装では、末尾が Hash を返すメソッドであったり、ローカル変数だったりした場合に、適切なコードに修正されないのではという懸念もありました。

## 対応

https://github.com/rubocop-hq/rubocop/pull/6689 のように変更を加える Pull Request を出してみました。要約すると、以下のようなパターンで auto-correct を行おうというものです。

1. もし引数の末尾が Hash リテラルであればそれをオプションとして扱う
2. もし引数の末尾がその他のリテラルか splat operator であればオプション無しとして扱う
3. それ以外の場合は auto-correct を行わない (∵オプションの有無が不明なので)
