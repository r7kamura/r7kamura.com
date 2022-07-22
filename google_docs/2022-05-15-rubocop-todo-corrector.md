---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/w9OBJCwfe83sN7PAnvCZOPiEil0YgXp4yVTGW8ZOBRGzBhhhlWyfzVIo2nS9GlYtC9NV_EqWuucTTgWaMNtX917hpKS5PwPrrzVJcLGnZsLzTU7U34ckFZwhOpdHb0rF5V-Vj9WXKhxeMxphmiMk2A)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/9PjAKR9lCDDW8RR39N2i6zcTr0loJe9qb-53OmqzAu0hsKJM1OxHgqrA5dVZYiW5m5et2ZOxxtROwj0wSK5qafPa6AKG_uQVmq4huDqbUpvkXVhlkf962Es8uuKKcZW1io4gtTXywAZb9nrfj_C9iQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
