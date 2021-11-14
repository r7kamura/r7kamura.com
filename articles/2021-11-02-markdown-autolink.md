---
title: Autolink
---

MarkdownでURLを文中に直接記述するとき、CommonMarkに従った形で記述するようにした。

変更前はこう。

```
https://example.com/
```

変更後はこう。

```
<https://example.com/>
```

この機能はautolinkと呼ばれている。GitHub Flavored Markdownだと上記の両方をリンクに変換してくれるが、CommonMarkだと後者だけをリンクに変換する。このサイトの実装言語をRustに変更するにあたり、CommonMark準拠の実装を利用することにしたので、今後はこの記法を利用していくことにした。

既存の記事については、Rubyで書いた雑なスクリプトで機械的な変換を掛けた。

- <https://github.com/r7kamura/r7kamura.com/commit/63b673401a38507c34787b0b530db23c2a27753b>
    - 機械的な変更
- <https://github.com/r7kamura/r7kamura.com/commit/62d8c9392c4256e3ecc4566dbeb0e70938abdf7d>
    - 後の手作業での修正
