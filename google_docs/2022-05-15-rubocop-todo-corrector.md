---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/SXYbcEixZSs6WqxFq57IjWYXFKu6NiMgHMJQhDWtQwkfJyEkrTV0PIiVe0ZS4CcB3bwanCAVPY2bKcMaK5_W-h8bLN_ahZTOzu-X3zk_f64faR1qq3aB3VVwHwU6ebDkpuZv9KJT1lE9eA-ncTHox6tXlmA1ileX-ODRQH0V60EF0Lofeae_Qkd8x1AV)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/_b_tIMchXWz8sbM97BCHgzwr3IliIMkIl53Uyl6g2FE73BtpDzfxvoOoqHzBsq72uD3sj_nBr_eqbiC3HT-wNWySrDdy5RyhJJUPKJnzLspmtZrrr53mhHq8La-oF07wwXp_nLeAy8yd0PvUEvLSD3ArPSQ8WbaUi_7XtHjF92pRyXF8MoEZBmPRid5e)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
