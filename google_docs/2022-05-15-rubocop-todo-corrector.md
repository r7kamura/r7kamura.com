---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/HAXNGLEPMD9dsxOx6gg_ShFDsTLVCw3Ka9k-wxOAjTePcKsytizyQOEw6t4vBedqJ7sglkTD9tNHvQ90IHWL2SG0zdiH3CPeAhpePYF_ncRSNDP7BcE2d7KZ7VZRYSac8aXp3Jjl1wi8gNAaKvwMOEQGp7KRJ9UcFOtWaRQ8b3IDoebV8pxA1GE0fAc-)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/HCtsBHUBWoTMAdXnzSyqmQP5ZYFV4q8q2izuZBfLqSXKflejud9bd1-YcG6DPyK6bNit8GyajLPeOkWfmWos_ISvb9smHSksO8J2ZEqrton1VxSvhbn-LST7iLUQ07D2DjzGR8L5e0IzrJDSKiJOGrGf77NiJy79-4I9eDbkcj1fgjvHcUlYUEDHcE82)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
