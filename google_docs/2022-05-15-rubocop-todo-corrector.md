---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/qGzXieLVSktTRAGRuhDPO3P2lPJl8Xrw6Dums0u2X0ZT8xVYBjmVJESaAt3P80tYGS113hTpxqAVnCJmSwMWmQx7sHLt0nDu0UZRhPSzb1fhjNvSVlHT7UMfrxbzGrZKPHq1s7NlaFddcekDtA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/bAVWB_zg5UoP9j3Snk2Q9_4wpb3bVejE-W7Yjv8wsw9dGbnyOT4vKKmI4fyTR-rh3BiBzV6rZHpStgsHB32RnF1DA1aTQqmF2U46sC6p7QVceDQpTSW3svLqDzpcYOlg6AFw0_L6BiX_-EBTXw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
