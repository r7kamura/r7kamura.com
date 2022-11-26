---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/8qOdxxqrLRWo_nfsCzvv5RSSnlW3OrSG8g42hlxE_Wb1gUXQdEBD8lIL1gp7jz3bGiyHjXe85qzsU5-KsuxwxaymEbmuUDP_AfaOqEkW2rNv4dlr77-_ciPqNfmoQg-dwXbecTQx-G7mSt5_3UfptLT75famZtmaHiK1CstpleZOdu7ADb_ihoY5eNfx)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/P4K_FHr2lsT1NhkbEUYDH9-WxMPDbajCUIEbv0DCfw6XHJz0WUoBbBb_q3rZkVqP1RGEoWvzBW303qPnNEDG5S-MJRTys4f0f0rMsWh1lpQo0mC7E2JUXQU6ejFcsUKauHwi0fEwDSi6cLvLSE8a4JUR7_JEkoeieVxPN8wds7D9t9gHGej9aQDAPp18)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
