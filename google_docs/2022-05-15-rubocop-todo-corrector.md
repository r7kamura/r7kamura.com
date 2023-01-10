---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/ePO-BIQHzK3ZcKfAKcZs8HJW2HDUFu_4DSThliFMy98mT6XdqMLHzVNdUjkXgr10ipPBZd6Su9UqVT1c6c2qy-_46QYeKv4ypK2QrXc7RrhoMNW9HY3DfpUkCpiKRZa4E1DqTBtSL2eBF2aYcNuiJjQrXlg50BMPQGTFMUA91eMusHTb_E8-5-jWNEWE)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/XOI2LKF-uaSTdvSTX9ZO7mUvuLO5JEIBQ-_ZL8TP0gDeJu3RX3954qIV6IN45SZ3In1TCFOBtXIzqCxacSIGBBnAHnRR5Qon7Oo3WhCkxOU2WzLUPF2nV59w4SyB9sz5dNP4j3NtcF8GG1mwWJ9uYx_0b-9O_AFU0HzpeAZb9Equ3cuYN4DEXAtTjees)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
