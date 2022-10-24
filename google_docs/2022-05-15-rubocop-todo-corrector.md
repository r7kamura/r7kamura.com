---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/jf-6lTfccDJMu6uJh6hpnh7TCKcabhHvOW_zs7N59Ijr01eUroIhNF45IwdvwxJ9K6PU5Bgi4GZwHHbhEjwF6qgpXoWlOiG3bzZnGJlfKDGab1miYgnD8HNxjoGkzaQBVBqC6qOspIFLYmCxGmAqxHWjg1dy4KsKGBzjEGCOx6k_sjluNyaG19Y5)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/vRMgyf80flnw3cl2J27v0D2v5z8cmsAgKo2vbGksqj27Yt2KgjRlf7eq9DxjGP4DHLKcKmAUqzxiejKpZqSwSniFuTIgFNrZk9wg-rSX9Tbe9qw2hN1GzmimaVOf7Fl6luHrObIb12Gm9Zg7lBMMpr9jSF_cA5R9KUYapceBBJAZ3Z_7useZH9fK)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
