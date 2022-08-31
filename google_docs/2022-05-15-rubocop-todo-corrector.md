---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/_ZwsRo1BL19ZMfzdXGqvbfR1ZjAc7XiF7tRBthLXM_zpGbQemKdWLnAKLSvJQweXuzMbYcGYMNoGZJnS4CPPMyykRsOVUCZsYBx3mS1xTW2GpLuxT9xKpUm8Fet8pUAddfPnYcaMHVUlwPIuBozZDw2_jwhKZ7rkPGQPvaiMQQiFb1HLSIAuAmEm)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/W2zUaC_nEeHdDZalmrFo6FeIonjQ_57yuJ-_DLG8bMsD6-TtcWfHqS5KOXFigOGx9_YEw7A6Un4cHaD6PhA0SWg_yTr-fkWKhL-WwvxYdbXvkstu9RLw3zN5EWqiEoiAk3gAHbIBAVlUGY_Guj5tV1ddSA0hBmrMZ8TOS5_DCjBCbPJPJl9HN4R_)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
