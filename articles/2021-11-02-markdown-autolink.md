---
title: MarkdownのURL記法の見直し
---

本文中にURLを直接記述するときの記法を見直した。

変更前はこう。

```
https://example.com/
```

変更後はこう。

```
<https://example.com/>
```

理由は、GitHub Flavored Markdownだと両方リンクにしてくれるが、CommonMarkのautolinkの仕様だと後者だけしかリンクにしてくれないため。背景として、いま現在このサイトの実装を面白半分でRustに書き換えているので、CommonMark準拠の記法を利用している方が何かと都合が良いという背景がある。

過去記事については機械的な変換を掛けたのだけど、これが近年稀に見る雑な仕事で、恐らく抜け漏れが沢山ある。何なら、もしリンクが壊れていたら古い記事を見直すいい機会になりそうで丁度いいと思っている節もある。

- https://github.com/r7kamura/r7kamura.com/commit/63b673401a38507c34787b0b530db23c2a27753b
    - 機械的な変更
- https://github.com/r7kamura/r7kamura.com/commit/62d8c9392c4256e3ecc4566dbeb0e70938abdf7d
    - 後の手作業での修正
