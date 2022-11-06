---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/8on2HGxSejas1VEAN97cMx0SseK4ZRyx8RNe8gyZHcLdMWeflIlgYBimuw8OCuGLPXrwG6hO6Z044sDGanfwgD0RIv9g3gSgz0rCKKwDnS__8niP0ebLyIy6fgVnqcZwjnQ5waSkbMS0v1PB5yGanuV7AQzz700UImdA6nbsPTJMwum8wQ3bcdU5zS_p)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/0guPNpxqvU_izuMpf9wSiCsRkTw7sWQ1w5Z_TGnL3YM-x5gS1EsQgpnk8wid46xPuRJmt4TZgEmCzDECdH0pV52Q1uczGQGDEGs43BivksAM6jg8lE3WMMt8fmeH_sZuong5QZFoLyjvzqb8oz6i7CPpw1i6HD5oaiaYsY15rbfCZRhql33rvF6pzG-a)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
