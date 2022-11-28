---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/U-tqoaAn9Nf15BOrlheWs9z0IcUYfvC0fY9dsytOYVio8uScJEYkeip_mplwQGxmHROY9K0KbdThCehsGfAQNzAhwTsqp0_S0Vk-vX-e4KpDX35bt9aBYW0d7YiDUqFkiSkqWchf4-hUOLQBpDqrm_8MqEFA7ZpTjkDO6Bsdn9uSa6tfydTZIkD0LXUZ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/8k5kC13BXDADBI7RHnHTqen6oPhQ-dceyZPJdd9R-ioH7HdYtvmK312avzmKOZv9uJklDdafX2PIuJhd8XY2JqHmoqUR3BXmQxhtWMySTlIpbETBtuFV1tH4l2qnxEXTnZ3UnPsxA8UkN4bMe_KOWubJgul-v5SNKjsIVNvVComZLxJXpWB9REycRCU1)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
