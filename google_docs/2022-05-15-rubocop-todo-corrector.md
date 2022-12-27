---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/KXprQHr3LW29LxRK_SScBXjFc8ZYgN1OWvdu2asIgzq5vRMzw9b8BR3YGflwbQs57dh2T6bklsiBscQbqjY4RdEyTiQVD5AGqoNBw4EMyhV5v08V2EUodOG-bbW9l9I-0yT5E9_ee7D0mYP21639kS5TWVN1_WB0ww19ef9ZVH5hp4qDZXCRuHy22Lm7)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/E-tN9allGn_hqvx0V0gt4ecVIX9VwNLJyLSMPOSfEKztS5EMTGIU7K6QHQS0aN7_ZX9C6M4nSiBUzrgaGfgKW9DjvkkQF_ZtlIBVxzg7YRaZ6HXEP56n960cDBdKoNmd7U4i7EvCq6HUbJeo-2M7VIJ18WXglAPUF6ie9uJl-R3m5UucwKTUdk_gbDEe)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
