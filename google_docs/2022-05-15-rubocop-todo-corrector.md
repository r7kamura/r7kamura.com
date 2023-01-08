---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/eWL1rvouBh2AhBoyZRvSFn7J53rxm55mhGIMw6N7gHtQR_bdjefTHo_kl3i8jc2taBDBLQ6IuGevT3xeF3Aw802sQHa7brM55ke7MDkEPZZTA_CZNWGI_93NxSC6lMSBTeROIhVpFZZ9NW025zXcQEKjVrLF2SqWtapMyd9-o0KJTnmwYv9qALjGw0py)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/U5YdVuw0pLK9rnnhSWGGwKgAArhgR_zN23U4xpXZ7osQH7VTQ-5nALewxTphNJKJ4XXNYHlkmEJ6UqKGAn1Y9hQCO4xCRE0YE992RM7SkyB6p6-0SghSfgIs4xu9wjXmFaNPWKDErIZSjQsZ2rPTNZXvA5KGnXtCnpGnNbmzZiCA9-zrmH1YKanf10Co)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
