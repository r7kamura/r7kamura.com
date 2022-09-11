---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/3jCvuIsHudMYjiK-dFypXvXwn2uw9uGEJDZ6VkcIerOpzFC7WQku3Y3FwhPsVN9j2sN_0P5xFP_y49XwBJKuZq3R6zhURv_Iri7mUBLLyVeCLGZ-n5hO4f_JC80O8y8LEv3FLAwtsmYex39YAesYm12nFi2jfytIqy6fJvLYXGNvZ9i4N0g7Clvs)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/3jEAy1j7UZ3yAm5TETOkBYaPswSfdPB6VZ6TuQlJfNzSEVcZ68I_3q1B8E1yymS9y_ckzDYM41qfHobANzt96WuDVHe1mj_2e00dEDkYEYWcXCVcZLDlzx47mnbsjn1KDWtqwyWyjqJq_72IG-a57TjGuO3khdbpVxyAgMAy4yt8XVWBkLzA6SY9)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
