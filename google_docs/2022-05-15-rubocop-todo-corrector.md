---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/kX0htlWV4xfQHMJuhGjQ51L9Go0rytHgHL9a2xZa4F4evjyHiF9TkZ2VI1e3z5MHNE1Vd1tnd5AQLe-TyfUxrDH7JHdnR3vIXk1cmhh0fjeG3bLtcaVqC4XewtMOpHzElkCSl6kyrw4LN6j3ybhm4g)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/oX_R1IaZjbN0crUYJ0OwfOTNBkS94mBXpP7fYRp9ZZi3x4AFAtW7qxquuusn3HaCl5leYxMZcMXwWQ_MtAgx62aHXhhkOtMzgFYLrPmGyAGEbX-YT2t8UdIFNW76oY-s38xAJAtVZiPq5epwFp6z8g)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
