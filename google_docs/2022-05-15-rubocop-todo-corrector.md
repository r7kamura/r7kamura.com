---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/1NXOa3b-K5ZeyO1iQe148aHeovlx3gxcd-fofVmc6ZoHW7eR327cwSkkanDdS9HOJ0GTCBypOteDsI32T0GCrhYVHwLEoW-1aZeVInOgWEY_PIdVzzOPM4R1Fz1hD3FlaOodG7FLflMweDvb6lzHAhIJKlktFsVdP1zAFeAbp_PEhYGH-QlDyXpSvgtZ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/nDo5BooJwsHzEX6nHXM1Nmu3bGlEaUGonhVVXnzQuu-zB--2H1OHQCBT4qc2uN6k9rU3JeIURXsgluU7VJndAUhh5cJ1eqcl9ClKlfboeC3QN7dZhHmuZMFvxEtfb3UG0M-WTbr3M6Wh4OSAzrCBMnRMxEZ97kOiVHcneY_-XJYmIWs_4Q-Vudp8Bc4a)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
