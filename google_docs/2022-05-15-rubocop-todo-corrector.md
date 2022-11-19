---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/e4hH-0duEF9vaz1GympTNsouHqjKd6jS4kuKUwH7zKAoT2hCw5_k3tsfKGupvYxDDzs0bDdJ5W79TaIHaKKeuocknW_ZR9CcDosjOTUKd-hf7CoEzzMgYgpKI8ALyeV1oIz-hHqyVoZy1bWPO7nuD5K-jQGOHrYEU6RN24R-bEO9nuHF00tpKzrgwyg8)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/HymZeb8Rq9LCZfw28ij4rEAPewRzsD371gyZs_zJypIIo4YE7-eUIGoDnJ04C5_amURo2HcFvCIRxzsbZyst-xxlLtpfp6jz0MjBmOeYV-Q6aW8jCVD0Dxt6ncZ8qq0WaPOZGCQie87AuL2hz6qsv5HzwOFrqNwx9ib_NaF6GF-Yra1jpuPgXMjTkY7s)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
