---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/o1Q45tch4Lf2d8wAfQdFPkzE1lenP62iDez85avFGAzi4sM0zUkz5PpwHe2qqhAJgwyNdpjMW7XgOzh-BL7eIL8vHuc_tKDKu7rRvNUixgiGwdgLAbScKt5sI_zNAbAEpTB4_3U8Tpi3RBq8bQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/qRE8zaAneJ1ex6Nuj_yWs6gkjtrOl6v0eVwqjRVaXKqIYgWQIkFQbcJdvrjsDfePXztAjoEyeDe9iOtKpf3Ajp-NntGTQwqqkQzDlRviS3exY_r8nKrJxDHETDjZSL62Ack0ad9ep1_D3XfoHA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/ZvBGKszc5ihBvUXMb4uB45oI0rbwBz1OhR2hrice6Dy4JvZGpUG75M6WlepYOo9dh7PFhz4oHNAtAHkDSvCPCcgSCkvM-NLpmLYpgk4cCuP3lEltd7rUkOZk3XXSJ0k1BFh5HgbyoO0PuMhaWg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
