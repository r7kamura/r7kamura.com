---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/qaBoECiP3kdeBfUuovrvTHjG0uqwXmeOeucd6IR-hxvpa0BpPghCXi7NgLfuqrM5BY0Vlr1V06xE-HU-xzl2Z2z769c3Q9d4WnFf54BvQXp13ykHjwSsF_nViTuvNm7y6z86Kz2wd34f2i_HSpQU5Zbdrk4m35rs0NURx-z7zpnH-mUxLf3t6_BxS3rp)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/37hRhhP8hE_2Xw0rbOe19P43nWun14gmI9EXb2GMQgdWrPSnOoHhPs0vYE4s7BuF-dJAmpYnk0RKGPnvsrWZ7Urtrxv2UL6vy273fS6kRYcaQAnkN0qUFtMwDKGXK90WpXT6zKJQt0NDmrOdTyWkBtFwcFC9I8hMCh-ZNfbG6I6wO3Yyqs-hopp--6Tv)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
