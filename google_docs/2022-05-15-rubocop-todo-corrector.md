---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/pUTtIPKkf7jI-ekNXBX3t5GS-4bS8fuOI7EFaaN_8b0FEUm-ZRbwgg6mxvuGnWwwlAPV_zVIgmjkuZO1lLZXW0pBWImOAfetu2UB4_YvtmUHQ0lIB9q35NNIe93cM0oDXMO2Z_sO76IJIhhKBYYaHlgkeqMQ9-ZGsub9-UmDatSRMV4lSrilYWXR)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/emNcWebjSosJBBlwMOyeepzHyYGtlwljuS4siehTsNxGkxm3cRh1C0A3WmpUq4pxc3XrELp5wyQXPHzp2c5XR9bmubAijD1pOpaX-cKkXcbw2EN-iLzPfKF1Xuag83Aun4wuiZKLXxH8RSRRkOqCxlXWFltmPismLaIX6B7pbJP1To30fGz_iKme)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
