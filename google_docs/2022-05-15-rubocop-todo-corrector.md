---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/lIxfLNtM2bAt91ISBOLfxOCQK8a1cA57xkvDV4Xj4QIpELvAr26A-OAKV-VvvbBppc2RoSrbfsKqF8xs-OkLlJ0wR3T042k-UazmyDtmeqKCWl5P0s_jKDOAjbvkecZM6zPqjIlKwL1_Q7T1Afx6uVYqTX_7qpjeXk9gvGH1skJlrHzP2lwjR5zlUnVr)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/22PHybEVJ0nxS7dBatzvniz80cqyaXaZMyp7pzoAzxLzyEgtDnE1JJL1XGMsXtiYvJ2OKJ6ddkU43HBYTf53NkR0WbJ1KYbsWFxa9D0Nmr0CZMhPTN1Nrk7UWj7UDlETFKM-CFQOMNirwMVul03WN_0WRxPlKx8BtqVVzw0XV2MPQpHUWb0iu9NOMRDk)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
