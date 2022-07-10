---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/S4L3Okbs-I3os7QsqKUkpfAqu5Mwd_y8s7rrSluTxa0D0JSOoGJDm-iCcZnCBUn6_uqbV3FvfZ8Om2-7_-NjJkQHJm27VNpxuq58Vm3wGxV2RXc-eoFhq9rI2qhsswXdBt4v4GvG1VxL5bKYNA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/MMfqbRpT8PXJgf_E29-yLhKm6ayZLT3gKYByWZX3HbMVn1HRVo1wm_KKwmD1V7ApTManYdXfveZXrah-nZ-pxFa91_yyaBIzic_dw8JefhL50SZl9JYO2bUnNLqlUQ9LwbPLKjzdpyaxSG8UjA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
