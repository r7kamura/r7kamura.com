---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/IQLeEFw9Dugtu9M0w5gO1_4dccoI9udRwXIsCwjIhQekG1OeF08qQah68nqYvSVf8x3dGGhJKxNZVXmFSIBmTYN5FEXVwl1qaXXT6uBQxhaacIDY50NVHfJLtu72vKbKwG5yXLlJ-Kl8SYdw94V9aYxAu9vZjBVfD25usBR4Xr1GnWJfYvukOB2mXq8U)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/ag-BDybOnXL1ldF8HdfAKSTrdf9zTiELDis-er9bWKl4UAPbK4fX_8I4WGuMcX0WA5vCWl7L7gBVk8DbY3FZRSKSZvL7tHrlJ55Iy3p1GgfU0CEY0HbDhooj7-d8xW7bcux9sI2WtuLkbvW7VuStIQzdxVonUWxaIn5I25Ts7GMzrwPVLWOV2N0unLZx)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
