---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/3oyUibIifq8d7njmAkaHgrYHk6SE39nwfk6ZwBlallaZVFWyPihPVtEHDmX-IBMjonhrDlpF2evPCTysCtWKdqWaSpSCc1yakjS9EXen1SU4GPVuMO-VFEWeo77FG0Bgpa5Iezd5ehKc7PfkTxO4phx4pr04D1FvfkaTJA6Tc2tNglFVmVDSoQojoBnq)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/pwomAnpj2o6uLhS-m9Ska6NHvMZKyV7516gW-wQ2gHSJ90d8c9lueI8VniUHr_ZPnpIG3Qh5l0cRoV6T8f5moxx-ppQYqHusJwt5cwa4CJHgB_Bvvi-hZ7hNEnOO6c9R3vDE1PJviegAQf7gwdrrjNzLw0XjRhLPc1W6gKIkb0QH8uwPF_qr7CN1Xc6x)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
