---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/10NlV2xjD3LSgJbGbzMWqo_K-DaJl6E0LkS7tNljjAP-XhQAkcO_OH2yCKwpmDjk8Nx2NVg1nFqtLGs06Kf2W5a6NTqbd2QaOHeZXoWw2xrqi6WW44zyiJlPfqfx9_ufTi44q-ehb6HH8eMTng)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/9uob9NZ5fkLwgCKRJTFBAnIk2f-9le1F3KjijsDvzDuksttCshDLKm4pZrnvpJ-YBEnjAGbOpUyYCE1_Fnv5eX38-oQmO_JYJZnUibYghOONXdNX55K_eA-Z180URTUAQ3g-rFBjtj-vKj3skA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
