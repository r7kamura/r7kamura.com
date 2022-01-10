---
title: Slimcop::RubyClipper
---

Slimcopの機能を少し改善した。

- <https://github.com/r7kamura/slimcop>

Slimcopは、Slimテンプレート内に埋め込まれたRubyコードに対してRuboCopで検査や自動修正を行うためのツールである。

```slim
| #{x}

- if foo
  | bar

- a do
  | b
```

Slimcopは、例えば上のようなSlimテンプレートを与えられたとき、`x` や `if foo`、`a do` というRubyコード片を抽出し、それぞれのRubyコード片に対してRuboCopを適用する。しかしこのとき、これまでのSlimcopには課題があり、`x` に対しては上手く動作するのだが、`if foo` や `a do` に対しては上手く動作しないという課題があった。それ単体ではRubyコードとしては成立しないためである。

この課題を解決するために今回、抽出したRubyコード片に対し、次の二つの変換処理を行うことにした。

- 先頭の `if ` や `unless ` などの部分を取り除く
- 末尾の `do` や `do |x, y|` などの部分を取り除く

Slimcopのコード中では、Slimcop::RubyClipperという名前のクラスで実現されている。これで、完璧ではないにしても、Slimcopを適用できる範囲がそれなりに広がったと思う。
