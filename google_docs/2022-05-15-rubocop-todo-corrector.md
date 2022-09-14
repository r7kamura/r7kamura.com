---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/3iQ7Nnwkj7cto35wxOxNnICQhxMAk4TrduZ53meOrx_IpRH005ZqnISdRf2VaDdtY98vRtyQredIF8qIwzpTBM-I45Lt6MEdKJD_4H-CUoX6pGjE1EF64E1Up72mN-0h2PgVBW8jP7IMdOrCCj9BoDnoia__sdU_VFgERrR7ezaZjJDD8bQ2HTEq)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/MWnZE3bCkm3kmJaAEATN6c8-r-fEieH7W4A4pxSrwEZyFwHMg5dputvcngJB1QBch27rtoXYZ-U4tsBDg4cOHTEuk7BHmAG8-EacVt5p-fQU-BTW55NMvq2eW-bMP_21pxfuJtjALGdn5amL5YmCQxda_-Tz_N3KTpx1gmD7LeK9sCaWN2TF2sly)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
