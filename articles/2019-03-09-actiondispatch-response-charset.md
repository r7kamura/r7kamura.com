---
title: ActionDispatch::Response#charsetの改善を試みた
---

https://github.com/rails/rails/pull/35549 を出したという話です。

## Content-Type

HTTP レスポンスでは、Content-Type ヘッダを利用して MIME-Type を示せますが、このときMIME-Type 以外にも幾つかの情報を含められます。

書式としては Content-Type: mime/type; foo=bar; bar=baz みたいな感じです。

## ActionDispatch::Response

ActionDispatch::Response というのは、主に Rails で HTTP レスポンスを表すために使われているクラスです。ActionDispatch::Response クラスには、上述した Content-Type の charset で指定されている値を返すメソッドとして #charset が定義されています。

## text/csv

HTTP レスポンスで CSV を返すときは、Content-Type に text/csv という MIME-Type を指定することでそれを表現できます。
このとき、text/csv について述べた RFC7111 によると、他に charset と header というパラメータを任意で含められます。header というのは、その CSV のヘッダー行の有無を示すためのパラメータで、present または absent のいずれかの値を取れます。

例を挙げると、Content-Type に text/csv; charset=sjis; header=present のように指定できます。

## rails/rails#35549

先述した Content-Type を持つ HTTP レスポンスで ActionDispatch::Response#charset を呼び出したとき、"sjis" が返ってきてほしいところですが、現時点で最新版の rails/rails で試すと "sjis; header=present" という値が返されることが分かりました。どうやら ;charset= 以降の部分を全て charset の値として扱う実装になっているようです。

そういう訳で、この問題に対して修正を加えたのが https://github.com/rails/rails/pull/35549 です。; と = で区切られている一連のパラメータを真面目に Hash として組み立てた上で、charset パラメータの値を調べるようにしています。

なお、HTTP のヘッダ部分の書式の仕様が示されている RFC 7231 によると、このパラメータの値部分はクォートすることも出来るようだと知人に教えてもらいましたが、クォートへの対応はこの Pull Request の主旨からは外れると思うので、とりあえずこの Pull Request では対応しませんでした。この Pull Request が merge されたら、また別途 Pull Request を出そうと思います。

- https://tools.ietf.org/html/rfc7111
- https://tools.ietf.org/html/rfc7231

## 追記

正規表現でのパースを提案され、そうするのであればクォート対応も同じ Pull Request に入れてしまおうということで全部入りの Pull Request に変更して、後日 merge されました。めでたしめでたし。恐らく Rails 6.0.0.beta3 辺りに組み込まれることでしょう。
