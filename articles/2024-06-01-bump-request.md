---
title: ボタンをポチポチしてパッケージをリリース
---

r7kamura/bump-requestを改善して、ボタンをポチポチやるだけでパッケージの新しいバージョンをリリースできるようにした。

- <https://github.com/r7kamura/bump-request>

![](https://i.imgur.com/xFAU4fch.png)

r7kamura/bump-requestは、新しいバージョンのリリースを自動化するためのGitHub Action。何個もパッケージをメンテナンスしていると、流石にこういうものがないと生きづらくなっていく。詳しくは以前の記事でも触れている。

- [リリースの自動化](https://r7kamura.com/articles/2022-12-24-release-automation)

これを使う際、以前までは新しいバージョンを都度手入力する必要があったが、今回これを `major`, `minor`, `patch` の選択肢を元に自動計算してくれるようにできた。semantic versioningのバージョン形式に則っているだろうということを前提として、最新のリリースのバージョンを元に次のバージョンを計算するという素朴な仕組みになっている。

---

そこまで複雑ではない処理内容だったので、以前まではシェルスクリプトで実装していた。しかし今回から少しばかり複雑な計算処理が入ることになったので、このタイミングでDenoを使う実装に移行しておいた。

Denoは、おおよそNode.js互換なJavaScriptのランタイムに、TypeScript compiler、Formatter、Linter、Test runner等がデフォルトで同梱されている便利なツール。こういうちょっとしたスクリプトを型の恩恵を受けつついい感じに書けるのがたいへん便利。

- <https://deno.com/>
