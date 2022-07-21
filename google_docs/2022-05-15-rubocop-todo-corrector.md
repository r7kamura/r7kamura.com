---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/tSs1oVa0cq1QQmZ77wkH8-sdxFsotIct4SntuzRq730Fex3l6BH5J9zJnXUFz1Y0s8Uj7MIODDAM_puu0fGsAp6p_9SQR0H_HELy_qq_-tpwSZ3wcj_q8evhbz5Z8QBXFMIEhNsbUhpZGP9M2KDyxg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/OhMXbwMND32vfTVKQjOw5iOmORbjADElJnPunkc0u_u_Xai5_Jgtkq_ceENc1Z4Ff2Xo68CCyfzg5pbWENDp23LJhRLMWp3yEy-57cNaFR--VnjGLXlZSwbnFRqlui6YmppQqqUJxSurHwPGn-fgPw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
