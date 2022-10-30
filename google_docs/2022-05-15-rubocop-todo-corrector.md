---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/zz0iJnKN5xGfCTkoxlplZqkYntGEC1Cn6hkx0y9ydjMeznuc6LNAOHramXcqip762GSuvShdhZyQDtIRRf-0xX1kmS4BT-ox3Z2PXp9k0Tj3BeKv_R8TTrU5fTW6Y_D-9cDM_8DBoUmOaznNdvXgS9F_qlba0H_6qQErO688ellf0soMW3mRQBBf)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/WblU19Z_UUrqee7VpFHQX1xK-LtzdODIL3BVNyY1Yp3u6MxGhhqQRugeEE0zBdyyKt6Yjej06b8J_EiK928Z7mwtSe3MmxC_BVhJZYAZDvmkwWjqnfsvgxNPbLNprSs9vPwLS-M3UjCZzGgKwpyS6UvhoZChWy3xZ4hOnwelgZZJYuU7BBDhso6_)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
