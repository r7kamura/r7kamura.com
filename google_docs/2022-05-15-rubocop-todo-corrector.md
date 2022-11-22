---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/CjVWKT7eH9zPx6MqgA2KYaFp78gCb3HuUjEyZ8qp16r8oUW92MF7qglh9esqvE1mwbXu--RDQBZ8ktLEmW8QQs1UdTh2L29SvKGmfSMFw59rC5DY8velZl-GWyd0kzI0JSrf031emtfi1C6ezaaGqQeQ4kcM22AZGGpQ5z0MgSi8gAD0NPlQrKVq1w3d)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/8dT5UjS74oNDEs6TRv-4v4UEeo7vQM-gDMBy1LmMbWk4enw-oI6yQBc2-Kdx_vXlEA6y0v5hQJGSAJKHgShCg_OAjGeyMJm_QHOPdMjLGZtVQH1fO-XYqGRy3PIQ3yZN48yQoikvoHF2ufGcyV6Rbm6HAgJ4qpmkEnTa-KK35kTEgBHg5Y4J4oRVMwoW)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
