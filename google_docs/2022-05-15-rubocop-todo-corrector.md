---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/2E0XFsnQn5u7lZ2pUhwXztA5J5VtHvPPvZ3MRNp1D8Th-M118sAyVWIzZgzG4RoMjJ_eJkAP1LDTFof-I_DSgec2IgCutZWbzA-pbTA_5QHJ8h9D-lK7fCKA328EijR-IsreU-iQKayz8IS5JA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/4CEiFyHfPPaZTDrAWJLn7jZfoNY3GqJt5TeRVAX5z2FVhx4SHjM5dlf4EGvQY_0MLQFM-kRohv2A0rnVLXFeid153EmIQZ3edsN1hIf1CaTbB2cBrPIBggJ9gGj8_ISISFii2Qcvsf6nk5v9ww)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
