---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/AAZ9cEqmjGLGicDn9j6yGKXp-7UxdxKaplfgO1VRT2JEylgMixSBn9m_0VKKzjk3Pij-aJxfV0_e5MkfnhbQZZGzwpCvM_mZzu2qKoINsKCIraY2yFE72twBWz1V7RMbjKIBVVytcdSpuAVur4ePKz1x0rtQj8ltfw-bZ23n_anzqF4yJ4UKNbKggh4m)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/2sSCpFO_-tWMQvZJdPVE6PM4ja9w-2ffDiPZlNDEQRnBso4mHl_DEuVmtwFw129hxDQDD0sDDyLyEiVCP5pcL66Olj1_zpcI5LvPYPEat7sZJF2w9-rC_yt6NL-etsvHrtNQkIBE1JIBy4mg-9sVl2esXDCSYKyVj06odZ46LWrreidCDKEj3zGbuSes)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
