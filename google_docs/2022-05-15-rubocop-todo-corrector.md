---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/d3o8IftvUI6Hayzu97tuUoWSwIgo4vb4Fbl5BffAaPfCu3iHgs7kRc19Uyt6edW3-kw0ol_WW8NH60X-bc5KU3HCy0C-TnPxh8YevZzB_RlwfQt1jeGmPAT3udXwk1aJak-SX16C6Gqa4JOsYSALkNR6-fwbRZ1bPmOQ7zXZbHSS6XIFLVB3_C5g)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/ejX76evW4AzLu0R5tzQF9L4N7w5Y_B1Ro3SK1K7ozYptwmNWw5VvlmGowOrlx2enzhXrjqMvNTd2gKCyMpoI_3tpddIA6nlJAxfjavcW98Wz6cqSAggtCjO4Ybt8KUYvxt8vd1CdmGy1YO-z8TeDelCIUwHZkFAjUFasTXumrDMM76C_R9nAfZY8)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
