---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/LpKjOzR1FVXzhR8iUroNvrNcx5Ux6jrk3DwbJ069xDMT7Sslmu_GCSKPbXuJxQhQKETa6a3cpD7ZcG5gYLK6-c-qaVk0ONIK02N54CUyPe58tEOoCz1ZXO-bhQ-lQOuMpMR9oncMj-oNdKSZA7VnX05WepZtvt5g5N1O-m2xtBEwcg_s8qGKaxjuV4My)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/yETKa7nCdxr3Ujf_NtWbJ7IS_hnOWnw5q1Fn5nq235l76geo-0K8pN8cx-7XIC6yH9-6Wj0VMi7tBiG2zXJ_flZNEMN5B5HSI23LacY35X5nuNMES3T1bkzUXAXPefqI7ljo6rtwL7YXkrhZskyG91KOfofavnWkdg2laj-YMzA4pttm3dktUDwmtEo7)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
