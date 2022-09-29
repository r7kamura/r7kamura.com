---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/LNmhRnVTVaj2i71xwSIzR2swOf8NGbAk9AESNgvjyZ9LIRYTQuWSJntBmdhOkJBho9tuYXZfgWbPkGVzPljdZHQZS2TP0LoIfS3YAf5hUgDSxANJRvjwvnedWDM4GS3WmqXpNQIm85OivKHKD_fXUJn0Z8aKk9-aelfqJZH-J_4qmEBiJ4iB8JJx)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/n2kTjUaqLUGFeKuF54uQfPFVAhsZ-pkuU9UbBSJumIZQv6y-hTkPlouAAQMa-JknpYsWB8g6LxskMYF30wWElhD4tZ7i9TWZQj7q11HmTCkuWAHnDuv9bor8_OfnowxD_p6UNcbpL8aM_HfZjlmv0HojqMJNePQGeASBP86vIxLU972IoKy0rVYo)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
