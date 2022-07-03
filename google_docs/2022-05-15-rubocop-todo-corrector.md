---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/fMekDDdntW2NrlPuNo-2wKo_Mx4SeW_GWTW65kIr72SVXqw8HXDHQQC3XPZb3r9Rmll_zW3ogVCP52v-sQuzrd-R-gFsWfwymzf04qe7QtI5LkhCTtHWOdei1VwmBTkd1eg9CrRe226AbV8a4Q)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/GY4-WkrYBbNQ8uq_EdaZJuDIsUeQGraC9HDz1LukFXqdS5DywlBvtz-MnghT4Udk2S1WwQfEKIJJw8s97JwMfkO6vupst6sphPrllY09Td2MsDz_-sI5nCO-uLD79nHI7uEsgO3Z_72nfcFfWA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
