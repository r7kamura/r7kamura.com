---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/FAtt-BtVf2De55uvQDQ6z1xk1c4MxUeLvGu3_Zbh29tQN0R2OfoXkgv3a8oRBecu6uhQc0XZgwdAZ4QOOHeJbxUQzCBezSpF6cv-A5Z3TzdNKVMV52an1_fwsd_hhFPIBmNHYU_X5h5n5qeMZYcPuAuOOa_NaxCyxVoNT9qE59O-phkdXdF9oX_V_Gxq)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/LyHjEFAlc_4F5LyzCzJEYTgJeem9tvMsxIT2SFvZ6YrMrYDQ482J15qdCcDN0qBY9_6Nf0CqX1BlHXT0Pwu4l86OVRAXr06GF1HMBjREtbtWQiE1ZQ9dwLSWs4fMkAdp5nM_qpIaliUcMY78NKl9_9aV71x4dPgYZgq-v3ZQ9qDv20bvTgh2xDmfvWqJ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
