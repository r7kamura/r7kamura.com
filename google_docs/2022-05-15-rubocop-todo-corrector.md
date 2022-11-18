---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/-HDuCyGG1f_fOGVMxxjBempABM8pZcaG2dgsdIRVAOQR8cno_w6iFfE0196iCh2cDQ4mOH4iNSntxmjw25L8Z2sj_2IvLdiXniQaQVa4j8FleoZSAY-tKSt-CZaU9RzejbJ4_ujdIiqgbL0YpVD5V6L_rrKLNt7cIPITQw5v6XZQSx-OCZbn6w1I3J65)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/B--YMeAyqrUmvfcX1Hp-at_OGDCtfnzdKGKUfbiH9lDykpVXpafM5GyrVhWL3lavxiI1zNk3PNn7N-S4690_OefOWFUURJR25f4NMjlpmWGPjpNi54taD1iAIoOFXMIidYv1SRAZWkZ915t7ymWuVv8c6hKE54tCFS83fLfplo4e4acysjoS-ynZHh3w)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
