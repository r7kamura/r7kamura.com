---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/BSpBHhlWh44828juu4w7R8e8HGUri0SXtrTrTSdeEgp3XufV7YUGGHcgkEhBuaCWQkzVrWHtXXJU5AnRIAlsC-GHzUHDz31vS2enlTm3EpcrvYXhhDXU1WO89CG4Xcuu0-8bRq8WJS5rrMQ8cNXrUHk9S-F3Mb7SJef63EuTA7A1CqDXPfwtDZEK9mdu)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/4Py4vrsMbro0RfM3EZ8ruNVjGlCMIe7XEgkeYfsnodHVgN96fg7eLTfl5_Br3Uk2WgxMQip4ePabLc-aRKF-lTBUIN3K_-8GOWUg5OpcSmDsUu7ynjVw6Kw0qTEPQ8NddzfpeXIVtNpTzI77QVij-1M8_UrTf6z7BKraMENLjXepIvjugzcWSldqbmrn)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
