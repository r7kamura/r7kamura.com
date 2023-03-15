---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/defIfpkLBnR8FNdwn4hqriFCLDzTJ95BQ3WgkqYsYoVskAn9O7VJ0usA0hqOUHlDFMQQxzUctrZ8-KG-CW5jiWSk6f8IOuz4kWpPb8E6YUbO5aLcQjDHpjCZ3w4WH7HpR4LWkMfdQK4KfdwUawCz4A)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/On8iaraNz4ZxAEd83gjgtH5szTBrfYb1JaaBncmg1qUf4mCuQJJ97Hrv0Z3tIrUwVUml6oEK1y9hQOEKs57uTudFVEh7wu_LsDGRlRqyTQKSjyWvo0kAimuusAT2N5x5If5FJJ2eGR6NaRhnShE1CA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
