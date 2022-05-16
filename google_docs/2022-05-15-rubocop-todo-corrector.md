---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/agidNetVenYIidsciJs87lqlTvtiJSt2t_Blkn6OgUbvZNnTUKcDKrLdAXf3WL_9PGxIMN4bEacqWR3OA8dAKsv0HHy94niPSIF8HOmK-1Q1NqmZ2mTZXOEiqfZVq4kcHSz8afChS15evKxQEg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/zhrsYU1uiYi3DpctW1J6a6yzsGf-Vg7HHa7sfgBD1OqJ8pGJXMr7c9l6sdjdJ9qZvtIfXkKc7L6LEUz8r1WpHU3Tj08AelD9W1Cd8XVMBZO16yEd2OkovbO1wTQj02TDHwzp__lmJ0ufTbBwRw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
