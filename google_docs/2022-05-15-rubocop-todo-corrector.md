---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/vJcImOUAa9EQxCQfGHvAXwRwMALSM1-gTTNVEXdKKgObkCQ_vvuSIDDRjUvlUM873chhgynLAlpu_Ab6GgcjeDKENFQx_a3YzBQrT1UuJlSzD3bDdrnCLsgKz48Z1fhRIEDaEQkYUmJqVp3z8BmPEfM43ZoCltuvkfGsogZ_d6KDKNgKXg8qzrY4HO-h)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/M9Ago482Fl9N6nYFEYyipU-eoSkmOS2KUfBvZuZAy9WjCDQ4Md9k4Rus6XWhBRx3lsCex_EJhS4mKjs1H8ZZv0USRA54MwENcgvJ38U-XY1EywfTfcaBz8yJ0W_y-GdTlGUUCD6YOwmyH88eq7vc6ieGXw-Ii5OhmglfcsK21LnvR-wChGCvN0Vn1P_J)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
