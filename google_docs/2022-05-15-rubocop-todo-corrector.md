---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/onTgP90xRnkrq3yPFp71XLp9vRMFkuigQmIh4hfoEe1NAyjJ92HDd7eb7S8HDCAX7NSuPo-hte9nS_Me6vRC0mm3ELsWRQHp71RwjG--RcAFXzbKb_LU3TTcROHEjoHX3GmXVBy7nLMYOdUIgw5yUDXQOgxJpvAJojRFOELZkTF2xVEO4JOsnDFCA2DA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/MVLRVdsOOf0yl62uOzDlCgGKkM5TAvRLob6QucCTxqGYqcHVMOOfdvGMwU_VwQO-ZIevOEiIyGZKW8vA1t380naCJoi2tqBpTzpJ6Ri9LpygJiu5ulsloY_XIuqXc7P9FQ6bRQ8Ov690h6fpBs3LcQJut53u2qCG2LspL1wavC5QbCzt9oJZRTKE-dgz)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
