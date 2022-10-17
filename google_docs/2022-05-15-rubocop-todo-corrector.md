---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/C96-tLeQPFqZ1om8ekre3pvmk_ruckChvunGWuw6VfQFGas-0roPDc6cpuPU2dCYJchSqDC7V-RP-0Dv7mNlUEDL2iPgmgaczsA0xm5LVhSR7DocUZMu68R_2EAxOu3WwovD6XzyRg1YH3RN0eKWMi1mTlHJ3qfR2rC0re8POzOjzJ7nar4_0ed1)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/Gfs7xKxickaeXzQc2MCLCzHbJ2h2ODNarkccjnS8jNKM76ljhAGBigDAJm5e2So3RZe4ODqSiL9PxGN7gDvwxpH8wO08DQuv9TwVfhTA13cgTeiBrvvLEytDUl8tw-hdzd-hgqrKpKBJrf390qSwZ9HMbGEJeizWOEsVLWlLNmXS2lk6gEW9wLF1)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
