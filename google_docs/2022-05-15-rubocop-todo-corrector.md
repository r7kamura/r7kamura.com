---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/0VBG67nD28JUZ0-sxikDNvlu8yOyj14P9v8mfAgIWh3tV17LULJViZNCFj8AlaaVd_4fzB1RtvE8zyTD5PbQxt6jdHjyKuQrwBGIfVx3icD_74YlIvCuC3DvtZuUgd1PjLs_Qde26xwahNlTNfK4y0JHKsUkTfRHnpLWv1Pc5VLzQqYdeb4qQHF4Z2tN)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/e3TqUqoUIgbwQltabByjiaY86G_kU4WwQAP_V9W8kc9kUvH0dRDgh5oP7mYiV6nFDrwLrJv6p_bGN3JscEeMAIY3rouBNI2CeIdMVVLie_N7CFO9BFn-mB4XWwPsHU-la_pVbyiRQ6ibFhDSznWa0u-eNwEEU_8Ws9KHOOjWhnG0KKLkeqlvWHoTxGHz)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
