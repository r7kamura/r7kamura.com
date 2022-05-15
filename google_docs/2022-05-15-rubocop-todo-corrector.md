---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし業務で使うような大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題等でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

出来たのが[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Action。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使うためだ。

また、実装もかなり簡素なものにした。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行う設計にしている。

![](https://lh3.googleusercontent.com/jYwTnFuQuZ6dYD2liU6RCcQ_mH-Bt2SkYEJCtDXqk50N6jDaBKpj6-Dhxv1zeuaiHxQ_q8AYfEZjOXNpRD0a3K63sCQjpKb4V3os2hEawms3H86dL-z1a_2txHku8PGJDaYeAA6taxSbvHbpdg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/LfFolecbQY2Xmhn4rwx0giNT7-fBLCQ9o_VToFdZ9aBr_X8C02JSYW2Sot1TRoVHmAbT6KNxljSj8uR8sq5vXJzchBOsQzO259TyrSpOCDFkdHNabdXnMEOG6C82Qxe0ptJ_3Ztz0jqHxRD1oQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
