---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/qS6H_1tRxokK-9j25EM16pBA-Y3CHtzv3nizTS-fZtWi07z3u4BOlTanYja8G6iGHGHbvPCsuAR1UAMsyXbxpYW1IO_BstsGGNcLuMlVGxgTlRqs_RydyyvjnKzn0Rd-hA80HSjSLUiEkMKozerZ3upa2P5mUarDkj5-hwgLcl203SH-og6-mYwzvB5p)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/k9qYJAI72E1DEN3QaBGI65dAh-6eBUvpojeJGmu4-yooF0uLM3AWOhfIbQvSWabLqsmgJQXCSdPbnkZP6HUW8G_tsDDTmnwe7vEGL5dy-Y_WUEC8pbZojZ_jis_LmOHoIUEwEZyBdkS1U0EdhVkKZTDO6M3QsTNFK8_oRPY9H-aj0h8niclWHXHX6kYz)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
