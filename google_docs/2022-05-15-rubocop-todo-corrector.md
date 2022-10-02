---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/-5dWMU7WQZ85uFMqJAiVUwJYv55Fkm4C21MB8EQhaQtVSnNPCAh7awFgeTyfrAs5WLGVyRj68Kyiq0xWqmfsO65Koekv2n1969IdwalH1QsZN8l_iJB3982DOk9zHgaJM5enjSzXicAz3a21HnUd3D6fmmjFfyDySkZ5lpbmQ-R9Jj1P22fRdBwX)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/Kv5scw0t9tv2tBxc1-KN8Y3DbX7OjacPYZfZRpOh1ckSRt0CMUFOfmuJ3-t4857BWpPaQ0HYD9RHPp_Y6set7YNUSXpw4iuoc7LQP_v96bpeDM-0r_aAIdW40OULFngWQFzDtFAviPsB9uoD_amUbJjmHnJRx9a9XyJlqiUa5PjhkPhY7N8kAL52)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
