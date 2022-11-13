---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/uMfdn_Z81tmZpkqBumGDZX3a7W2EvfR1YEAA3-D_4b6EpGAFUhA8a_gyE79sFdGidg-70eBB0M2qA6s41mRKhj59B2o6FyiwsQpmTeRtp1VwKIOnw4CWMF9tc6TTZkjLpntca3z5LS2oLuTl-pkWyayuDgEx20P0WiQnCTjs21qQzoYvfOPccjrKKLRO)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/vTtAdLqgv8jlA2lSc5qED3RVxBrEB86sSLwQjGSU7vxSo1vu91a8dQsx5s5tAKCIQRFDjZ11vtdmJ0twawJWDe4sYNNZrEFCbq_70u71mVZkmPCYKTTY7-GNteojxmkP6ZAu0AUubFuF9Cj22K6YbXsETtejhqW4BY8aFsqLlT_eC4AUV9oQy-DJlsge)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
