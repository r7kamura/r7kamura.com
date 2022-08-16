---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/A4mXTiIzqGmWPKYsgsi3DIitWMaNZpmO-9neTE0zBBrhdkq19g6SQepOs5OtE4GHLvPiWo70CzbHWMrGv8jrY4AyLHfelk23qYI-tZT-WzIKQmMqYuBoMRx8DxBImMEnTGMFKt6y3EKPoCMlx6z7MQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/N6L6PptG6RMRd9yosQ30UcGNJSCa8nCcMIN49H28zkNsiOyHe2qeOTxVy7OdGvSZzIBuKR3xbD8Hh12cUICoZyBlF_f3D9fILeloVF8wtEbiRx991K1BPDtHnho-V1ULHGErJA_hsNMG8dcBOcDKlQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
