---
title: Rails/LinkToBlank Copの改善を試みた
---

## Rails/LinkToBlank

RailsのViewではlink_toというメソッドを呼び出すことができ、これはHTMLにおけるa要素に相当する文字列を出力します。このとき、引数が `target: '_blank'` のように指定されていると、`target="_blank"` のようにa要素に属性が付与されます。

さて、この手の `target="_blank"` が付けられたa要素から遷移した先のページでは、遷移元のページを制御することができ、ともすればセキュリティリスクになり得ます（アダルト系の広告等でこの手の技が利用されることが多いですね）。そこで、`rel="noopener"` という属性を同時に付けておくことで、遷移先のページから制御されることを防げます。link_toメソッドにおいては、`rel: 'noopener'` というように引数を付けることで対応できます。

link_toメソッドに `target: '_blank'` が指定されているとき、同時に `rel: 'noopener'` が指定されているかどうかを検査するために、RuboCopにRails/LinkToBlankというCopがあります。

<https://www.rubydoc.info/gems/rubocop/RuboCop/Cop/Rails/LinkToBlank>

## targetがSymbolだとauto-correct結果がおかしい

RuboCop v0.65.0からv0.66.0にアップデートしたことにより、これまで検知できていなかったRails/LinkToBlankへの違反がより正確に検知できるようになりました。そして手元のプロジェクトでRails/LinkToBlankへの違反が見つかったため、RuboCop v0.66.0でauto-correctを利用して修正を試みたところ、構文エラーが発生するコードが出力されてしまいました。

どうやら `target: :_blank` のようにtarget属性がSymbolリテラルで指定されているときにauto-correctに失敗してしまうようです。

Symbolでの指定自体がRuboCop的にサポートしていない状況だったらどうしようかと思いましたが、targetがSymbolでも違反を正しく検知できるというテストケースが書かれているのを発見したので、多分サポート範囲内だろうということでauto-correctの修正を試みました。

<https://github.com/rubocop-hq/rubocop/pull/6868>

## relがSymbolだと誤検知される

前述のPull Requestがmergeされると、`target: :_blank` が指定されているときはauto-correctによって `rel: :noopener` が指定されるようになるのですが、検査時にはrelは文字列リテラルであることしか想定されていないようで、自動修正後のコードから違反が誤検出されるようになってしまいました。そこで、relにSymbolリテラルも許可するように修正を試みました。

<https://github.com/rubocop-hq/rubocop/pull/6869>
