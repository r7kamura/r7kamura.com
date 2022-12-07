---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/GWcjwdMj-NpVfx6A2S04zjue_tvZbp7INwY27uO9KWtpcK3pZ1G86iYyUu5KUc-vWom0791bbyYc7QSO_734wywIz-cGmPde5l5ZYCMA2dpgW02_PCusGqrQsiBt1e67ikd5F1Dzu9hL-eU-c_RtD8noCWzhO47FG8SWK-s1sqD3yyj-kSAL_PqlysCi)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/oQQh-11fVG6Uz1E-_4nGgraYw76MIMj9Or5o9tbvfVkVCTW4YOAnOQEIdj-TSiZ0vGyemm1PeS2ueSDeau8PAlkMTIjD8hJ_7MitX8gAAj-q_jhKNYBgDBdW49Gz6PahYfy0y70m66eLFUwTiVrTN_x8TDhtqQzyQsJfvrxQUDCUjIsWA8yhWCd2MU2m)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
