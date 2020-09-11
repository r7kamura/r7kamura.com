---
title: activerecord-enum_translationをつくった
---

ActiveRecordのenumにi18n機能を追加するgemをつくった。

https://github.com/r7kamura/activerecord-enum_translation

似たgemとしてenum_helpというやつがある。

https://github.com/zmbacker/enum_help

しかし、以下の理由で自作するに至った。

- もう少し明示的な内部実装がなされていてほしい
    - `enum` を上書きするのは避けたい
- デフォルトで勝手に追加されるメソッドは少ない方が嬉しい
    - デフォルトでは `#human_enum_name_for` だけ追加する
    - 便利なショートカットは明示的な宣言で追加する
- 長くても良いので分かりやすい名前のAPIが用意されていてほしい
- 既存の翻訳辞書にわりと自然に追加できる仕様のやつが欲しい
    - ActiveModel::Translationと仕様が近いやつ

---

話は脱線するけれど、この「便利なショートカットは明示的な宣言で追加する」という考え方は、特にRubyのような言語で規模の大きいコードを書くときには本当に大事な考え方だと思っている。

静的検査に頼れない言語の場合、基本的にgrepに頼りながらコードを追っていくことになるので、そのメソッドが確かに定義されているという足掛かりがコード中に現れると本当に安心する。
