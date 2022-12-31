---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/JkYdBBtVijAFNfNWEJIYNoeZxvG9YXW5jpKtSTlW3g9zDDYY0LBEXmkSRGjIs306X7GMat3m19bTbau6ixn6GL_1bLb2lKwWrrB_RHOgd3LvD2bzd7F0I2Xj_sfDJ3cR5W6FmqbGdARMQqDpRwuev_ZQb922ss2QVzgPDZJ54G5O5b_ag72cLc9tz2tS)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/6lr1KL7mhGxL62jML7LN7MLtnzQ9Lu89UowNVPZ5yp4CQHA92aDtXLsiltwrM-FAAxb6ehXULsxImHHV6qeHkHGI6MzhkwHBW-krzRZwanGMQ2ZVa8wJ6_c2Y6A3_67iEZy1fO_JUPoxlCaeeqKkog_iEGo0U0MWcMdHlqSML-R4g6LiGz2BQTH4tA-k)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
