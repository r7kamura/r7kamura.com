---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/hhYmAmVIcr4Y_N1dMowPxOsU3TquF_LsNwcylEL8mYpCgIzhnQDMUlXlRQzNKW17ClE1wOhIE_2B2hF23ccUyXWb11aDHDPGck_Xssa7nho8eRDDva2AX7Q3m3qkM4W3pZ9-BDBUS3vgqxvG6l8lI0y7SAHg0OytBpVS9M7o-JtbvLd-z1Jxlt_S)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/aJv6UaQg0X4vPlEIF5HsYYJpW-EX6_pHaPoMFkc30BEKRjcusKzu9h4HNEz7sdj2g8Rt_9JKG7J8bXyDHqnUZCbLQgV5TMue6BFMZkuy8eZqYUXtFG8Xqggo1cVaVuyKn8JY2wL-EcOQnYeJKOheO5dzW75Imf2XNIi2zSC4fdXmbt8nUB8C57DY)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
