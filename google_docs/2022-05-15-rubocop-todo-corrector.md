---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/Lvqhgw-aDsSByiZHupdzFeaUdp0u53vd9gWfcruRrinpnhrzX9ziV96IU7PaC04f9rBJk5hVS-_HniU_0lguU1ZGDo4oxNmqqOoLV8Qkh3RqOyghG2ug9WBy6FkSkLpiBPmLKldpRU4joUQaeo2TpM8M42Gb2vJqVOvdf0Weo7JnTDvqfE9TG8YHJvL9)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/dU0yNKLSpb_DibXjAmGKq--Noopy40kUWbDLEnhPl_GsZC5PPVcNiTfngnhwT_UWdz_eYGlezmLT4mEGNOKjiRMtnCGbSUEVo807OoB6b_yjomjRRaZjG_Trd24DAWFyk2ivgE1bv8Yu5N-RUcI6GGsAzSWkvDU3UURXNtlAjy3W0JheXg6yFwLqKYrb)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
