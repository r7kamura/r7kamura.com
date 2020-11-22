---
title: Rubyのメソッド名
---

Rubyでメソッドを定義するときに使う `def` に与えられる識別子のパターンを考えてみることにした。

## パターン

自分が見聞したところによると、`def` に与えられる識別子には以下のパターンがあるらしい。

- 曰く、識別子の先頭に `[0-9]` を置いてはならない
- 曰く、識別子には `\w` を利用できる
- 曰く、識別子にはマルチバイト文字を利用しても良い
- 曰く、識別子の末尾には `!`, `?`, `=` を付随させても良い

また上のパターンとは独立して、メソッドとして実装されている再定義可能な演算子のために以下の名前が許可されているらしい。

- `-`
- `-@`
- `!`
- `!=`
- `!~`
- `[]`
- `[]=`
- `*`
- `**`
- `/`
- `&`
- `%`
- `\``
- `^`
- `+`
- `+@`
- `<`
- `<<`
- `<=`
- `<=>`
- `==`
- `===`
- `=~`
- `>`
- `>=`
- `>>`
- `|`
- `~`

これらのパターンをRubyの正規表現で整理してみる。

```ruby
%r{
  \A
  (?:
    (?!\d)(?:\w|[^[:ascii:]])+[!?=]?
      | -
      | -@
      | !
      | !=
      | !~
      | \[\]
      | \[\]=
      | \*
      | \*\*
      | /
      | &
      | %
      | `
      | \^
      | \+
      | \+@
      | <
      | <<
      | <=
      | <=>
      | ==
      | ===
      | =~
      | >
      | >=
      | >>
      | \|
      | ~
  )
  \z
}
```

見聞ベースの情報を参考にしながらも、本来はRubyのパーサーの実装 (parse.yなど) を見てみるべきだろう。

## メソッド定義とメソッド呼び出し

今回は `def` にのみ着目したが、他にもメソッドを定義するための方法は他にも用意されている。

- `define_method`

エイリアスをつくるという方法もあるので一応これも挙げておく。

- `alias`
- `alias_method`

呼び出し方についても、通常の方法の他に幾つかの方法が用意されている。

- `__send__`
- `public_send`
- `send`

これらに与えられる識別子のパターンは、`def` に与えられる識別子のパターンとは異なるので注意したい。

## 参考

- [クラス／メソッドの定義 - Rubyリファレンスマニュアル](https://docs.ruby-lang.org/ja/latest/doc/spec=2fdef.html)
    - メソッド名についての記述がある
- [正規表現 - Rubyリファレンスマニュアル](https://docs.ruby-lang.org/ja/latest/doc/spec=2fregexp.html)
    - 正規表現を利用する上で参考にした
- [Unicode character property - Wikipedia](https://en.wikipedia.org/wiki/Unicode_character_property)
    - Unicodeプロパティについて説明されている
- [Regular Expressions/POSIX Basic Regular Expressions - Wikibooks](https://en.wikibooks.org/wiki/Regular_Expressions/POSIX_Basic_Regular_Expressions)
    - POSIX文字クラスについて説明されている
- [k-takata/Onigmo](https://github.com/k-takata/Onigmo/)
    - Rubyの利用している正規表現エンジン
- [ruby/ruby](https://github.com/ruby/ruby)
    - Rubyのソースコードのミラー
