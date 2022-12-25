---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/id0GnCKT0PRKyNbrH_CaFR6LXqbYFy6vE7MIiT3F3a6l0XpRoeQ-qIweyfrhNpjPoSm6kjCyY81FNG-dl4yo3a_1H0qnLjagetL-EKTa_EOHoJZccbbvmHwQ7DN3HVdZbI42DF1e-Orxpn3qL3kIoDraEK0yD4qH491dBzRnsX42kbTSgaGziZ_74-Ki)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/LI8NeML0BcrOT_nlRXpwCaPewkQyaGJLgBakTEH5pzLtaNiN4oscprqvTVQHz_DQea5CvMShwyi9SsoJt7q02FyoN_MFSZLK45DPD1A-3OctVD2Nh4u-MFlSjQxTut2Cv-6ON93rjruGpFKRVP5jOKZhOTtnLJRVFXaVylkzWTfAzBQ8HyU2C_Nwl02x)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
