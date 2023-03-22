---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/B1ett_yGd4VoJ7EqbM0mwhtm6DRUrEgxdg0sQw8Dwo608TsaWDFmZXEYWUHCeEGGxYp_1IINTwFI0EMs9YN1pIZ2Aop-v52P8p9A2bvBoyJ3VzgQTKsh9tPg7sCodzKOvpLckweDTc2_dAjccszUvQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/3O6cIWORujwCuwGO706MrlbP0i-n0_NgQHCWm8GNGlnmWMK6wB22YKSoJWRDmbh6tGR6x140xsLwc3jXnSsbniclq33kX4-fDnfScn3GkaYgP2vuxxtjS7_Gzz4znF_DyI3fmSyQOkt-2rzHH-dabQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
