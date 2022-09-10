---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/Lb5jvWxFyCu544SPhIYRJm0RyLwMfZKf_liblZn4jkthqCUXl1tdQzq89AxK9FUfUks_b9n8JnkK3GHJWNxWHm2hu6hQiGw6dR5lj8L52PA4pJy3Ybtiy3jxPHOXUqI02SusNrcbxqZggn5SE23Lc9F9qEoE5plwZvwJ8kWYQMBzWuoGgpvzVX5e)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/xxeUDA4Nm7_AGT_fLhad_L83cfQ3SRSDXZmFZZBlB_oazOjdupAXc-Qxehmz0rUtCOrA9LFl1hC0X4woR5nNBRW1_8hNoCafmCcruRGYFtahCnCnh3pFMAjmffoaJUQIwL2Zw9BP8iK8NXfVAZu3XwLki_xjeCOO8IKE31l9F6-giKxGTRm3UQjO)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
