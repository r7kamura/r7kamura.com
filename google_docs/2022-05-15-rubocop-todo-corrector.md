---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/3WoHUs5HDQROyAtexONDW8BX6S1gSHpsEhnUoJ4xw3NYV3-A5HB9zd3Bmdjgq2uj--xYcehFOc8o060YPoDa47Ypg5eVWIkkqvkmAgRSekMAkm_ukzWELnUGYTfvM8jMeJDldKr7ZIZnk9RCNFKARaACJUe1iOJq7f36n0bm7HrOsYRi0RMgURhqE8kX)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/hVx6YDKhLSzgH5VK93fxjnJQHISr3msLWmz2nlcV2wGqEZJWmj4J7mZqlKOAMJ2cVlLGraeqp6y1c2qeJwTO0LdTf-VpK7Eog1CoVfTO0EDEwEj8Ff3JJG3KX1mFpXtO3c4cFCvWq485lIFwtK8GUDEoXsZ0XFYWl9eOR7qTOkXxO9r6qBQ-lX5ZtizI)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
