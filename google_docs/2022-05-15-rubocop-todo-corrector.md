---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/ao1QPBak5a2qot3-8Hp4H8rch3ZUqzTPQLqo4Dr4-fcp3HPzlmfqh_gYLIef-qi-jvHS_ar5vitb8ZZHnR_jJo4aPQv8L2ofe-QZXemY2h-bK9K7eXUUbIOR6oeiqTU02uEBx2Bcwmps9fGjieUYNRjlGtFAOph30oPcmL3b5K_poA5QwXci9p3Zchvi)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/4BEkGBo_2qPQYdYkp7SSYQ_jh0Q70kXsEVkUT8EWQK8Il_CThBXF_wkFPiJM5My4yU3Sor0veGszl5hueyYgYn6zVDcEn2Cq6v5qZF8h7CsoXscKoHb1iroLev31xjXeVuO6aH7iO-20Dni6m5Pk1nH0VCIfHeAe59fvqgRkIza322SF7FZ9kiyW7Rwd)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
