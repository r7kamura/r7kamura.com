---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/4me6-KsW2PsFEGH4cUXjROyVmEMTEFvelu-YzpEiLjZZimD07JfHhLqWM7Bqhae6aP6_OyxGaX7DBvjQaKOEi-PI4QI-i-dOcw2QRHBzLcLTnBd6Q9TMMajs0oIk9NMznpCdtvC0wNZP_WwFgWjX-a1-bejSJ10OkUNM5satiY6CAvmzpWGm_Ew3ss0I)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/CttuU3TXZz2CF2PUXI8I2Fb3WANuxfB0otaC_1ZC7YSrEcNc-3ftQGqUVbDiV0nj5dK5HJL_wcAtwDfoSO-Sx3q-guYMQhOjdxFpnftvd6lUHN78uj9Udr41D64VMFKAujnt3l3hXYFq2yZrzhIZSZIygdZSv4ya3Xwcg8-9Dw734ryPbNY4ln8HEtfV)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
