---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/Zv4057uSz_ZpxxCtyPZrQ_YeeZ0udRIBbI2CShDUgGvGdIAvUIoCBym5dtPYC4YJu2tprDzlscK-52lZx4Jbao2RHod8BXaO5U9rVImAFknxDLP7rMDJLCOozDE5PACjgb_UL_EMPWKk1mvpJ7S3tXIS06zPtw4-6wrbWzo7Bdae5hlH9TM3RuUb9ets)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/WxTHgpHhjudV65AkEomrW-dirOmzE40ZdwZ1D_d3dNB16mOuWS3alnyIR_6hRATwaHNzqkpOt7DaGnIbt-lxeOnQFZ7ZDtiW2avPNyg_eX0-WRdXtP-5fg2NegTDx7YPKL9selfmnTsS4oTm1dS5wWGBlG9iUEZLOy8jDlcmTXBEUysap3L4JzdlDw5W)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
