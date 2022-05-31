---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/ZfqLvSWgUxAj660Tu3L-8gabt4hwaDobodY_xv8mEoaEu7wH0XtBqf9TId2QoBQmfzs6T93BVU2q9COyroZYaVsuGtqr2W6W2gTv_lY8gXbCI2SNYntiSi1c_pmrE9ZGYQWOZrTmDWoZIk2kFQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/UHQjyc7KTGUsWLZvSPNnbt3clDYMsxvSZt1Ew-AKQM_c-VQoiw_AT5heSrLLhknwfFQMkAEZwQZy5T15YiIMkZ0z5XZofE_dboziatxa0S1-SZP_4OGOLNOA4Ohqp3XwHn1vWzZqytz6WbZGNw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
