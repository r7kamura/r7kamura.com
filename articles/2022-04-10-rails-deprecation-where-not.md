---
title: RailsDeprecation/WhereNot
---

[rubocop-rails_deprecation](https://github.com/r7kamura/rubocop-rails_deprecation)に、RailsDeprecation/WhereNotというCopを追加した。

ActiveRecordの提供する `where.not` というAPIに複数の要素を指定した際、Rails 6.0まではNORとして解釈されていたのがRails 6.1からはNANDとして解釈されるようになるという変更があり、これを静的解析で機械的に検出して、あわよくば自動変換したい、という目論見。テストされていない箇所で使われていると事前に検出できないし、grepで検索するのも結構手間が掛かる箇所なので、こういうものは静的解析で検出できると捗る。

> `where.not` now generates NAND predicates instead of NOR.

- <https://guides.rubyonrails.org/6_1_release_notes.html#active-record-notable-changes>

試しに実装してみたところ、引数のパターンがネストしていないHashリテラルである場合にのみ対応した実装が用意できた。誤検出するパターンがある訳ではないし、検出漏れが発生するとしてもある方が便利だろうということで、結局この機能は追加することにした。

検出できないパターンとしては、例えば次のようなものが考えられる。

- 引数がネストしたHashリテラルである (JOINしたカラムに対する指定など)
- 引数がHashリテラルではない (ローカル変数やメソッド呼び出しなど)

改善の余地として、引数がネストしたHashリテラルである場合については、がんばって作り込めば対応できるような気がしている。
