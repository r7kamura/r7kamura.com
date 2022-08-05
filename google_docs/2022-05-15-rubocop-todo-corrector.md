---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/lL3Foj_dfnr2POSoLBIwa_xw9D3loAhy-IQ8Ad05E0_bg7_VITzxZ9Ss1i2lkkc0JlnzMSZhSHeeE_162we6SDTKcHtCD1VAJVrDpbK_eI3oOgmN3ESzTVqp_T4meGrX622yIaZIzdNfqOO1ZzjMCA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/MPGYnafKFWHXsrxvBpE5kppPv15eUmPRzHcN8srMI8N4JvzFtScfjLG8OvQLSVIkEtyFpBNbh1DBtxo_SIsHYm59jb9BQbg8EVAIJyw6FwgJAkRSL_G4_hZLA2Ebi0ubblfpz7FiPNr4BLycnraCiA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
