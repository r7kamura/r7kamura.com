---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/lkAuqnDvczXvWTIUP_-UkKbnKbk73Z9p22r9xv6cY3X6q0kVSfFpS6mUNkwm67pinl_-JNvGyZ_5oodCZK_ueMMUHQpKIQ4QqjtPru-akUrbcdXn_W002L-N4819PVUbvorStguUZzTqsNZ8kZ5x5jQ_YqtDeM4sngE_7aVeEt5xVGqIkuYwgz9Q)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/Ee9RTwXoj__Qnnn7xqmXWJhpwy7Brt4dSrpDO6roYSt0hW615Eh_GAPM0wWcL8d_SIE9z8ySj7C6s4lE-DutJpQbhpAGoBvxkcgED8poq3nkzqlhmn3UGG0COgcADzjHlgyecIWl89yUJuymyaEOrgrjcDUtc-W08xBQUqCiqpk4PwciJQU6Y6C6)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
