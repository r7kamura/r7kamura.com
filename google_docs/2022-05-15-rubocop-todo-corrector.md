---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/2hFZ5tVx0l84t8cwUKFspiMxvz6XA9vWSsKyXTKKWYQZsTOZC284B2ZM3Odr_XgBy5ZdaS2hvyilY8_Glbwm1RcAxjkSiSt2JqHQnd5F-Vu7PMqFF5-1ZKxp8K_XEfFY-4WIXBMjXN6fPOMMVFcbgbZ1xNDZGugqHwEMbVVdG2WvlW7hR309HFaA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/7D8-YbK-ugAT6mixrIV9VYnh-gAvrHus4m7Q37pIoUAU5T4L1fzsi0qLZWHlVZUHdT66W7JacqXJBeNFbKC5eOwzvpmbojYxOJu-VIGea4vvEi0K0NLuhjB9exMePx7jWIq8Tc5QqAbhQ3FY_rMwfj9g8JFNNZtR5_CLXYeEO3njnziuYDZ75hM7)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
