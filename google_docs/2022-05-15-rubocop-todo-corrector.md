---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/8aKuUyaA37JCbAaE7i9GyxLCeJOEa5lvDHCjt8_N85pcy4is30XgITQT4QxLcqT8kH1V_HU3dvq8Xbu08pYxCr_3k0WI83cdug_FUNcOt7ituLZ1BVf2xY7xp9dLH15zQbimEUYRsXTtTv8_Mw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/1iVA2jeaNfxMT-UCVkfdyXxF0BROjtMplEnT28DKeJD4wOCKq3L99fdfeeErdOH-qmycDp0pJtm-xhq2o4uMZ2ksd5LQX3a6FATxgGRL13dsV61fjze7fhVArS0hWUm9GanlYnGjJD5KgOFnoA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
