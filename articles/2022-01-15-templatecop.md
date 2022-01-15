---
title: Templatecop
---

テンプレート言語に対してRuboCopを実行するためのライブラリ、Templatecopをつくった。

- <https://github.com/r7kamura/templatecop>

『[Erbcop](/articles/2022-01-15-erbcop)』という記事でも言及した件で、ErbcopとSlimcopの共通部分をライブラリにまとめたもの。これらの内部実装でも参照している。

- <https://github.com/r7kamura/erbcop>
- <https://github.com/r7kamura/slimcop>

結局各ツールには、次のコードが残った。

- 実行ファイル
  - 例: exe/slimcop
- RuboCopのデフォルト設定
  - 例: default.yml
- テンプレートからRubyコードの位置情報を抽出する処理
  - 例: Slimcop::RubyExtractor
