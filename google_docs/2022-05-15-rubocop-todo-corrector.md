---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/FDXhkgT-f0lS-FOuH-C7QJVTP2QxCz9A-9eCuUaA6Zs9d3kecciUfRhrnVwRUZjJyFkI7Xjsew6AGr0-a1hftZn39adnaN0-jamR21V01yfZjpcKUmX8zohSjWZI4sqXeQs4zPrVe0G6UPEXSGZinDRwqJlGlAJt25vWZcX5eoXVUtX4Z-2plZ82)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/2Z6QUWDg7rbSc2bgPY2eurm4AqN_VCm3TP1VwL6l0usRAp4VwfltVSpCgv_oXh98jeZNN7P-Snv4O-5UHUp9B7mtwZDquhn8oitlt4w6gdY4O90o1TqEgnk6Yi3foERkAyAOBK-7DSsxAY2ZXqGqif_VS0cBrnFQI4GFN6mjA7Iz0ujbPqZIAqH5)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
