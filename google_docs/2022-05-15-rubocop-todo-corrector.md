---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/Pa7SKSJtKLymkbkUJA980WeRNSo6RDNf6W1oZQSuT_GbYa2qvdqmLiDMTxTG8IeekClgeE5zvigtlCioVzjkz3SVZfO4Pdhx4CJUdq7bPXwxf7sXjpPMMDCAGF7Aia3ur00Iphawh8TGyHTw7p9raY798YNgQP3Q3h9Fex9cv__xP9PrYNoV8V_S)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/W3LaJphIzDM0saArGVlffVQY4Yloa0HUW0v0B1fSRsXWcxFtX5on_37G02mm_avlxE0BgTk5FXvqYJvMK2-ymdd4BvI7Zg_yEAzeKIGEdgkEY8BUU2ZR4sFfySIzFGq573T3AQz4jx_wPd3vzH4YZAL8jUzb-PavllCG-yKOtu-45NTV44Mr7P7x)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
