---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/1ilUDVJvoKxjsYAI-NijT9hIIhU6zONYRsjTxAxU0jmfrWgrpZaPIz3LIVo-b98-f8n3XUytkCRTO-vlqebJzgCbdREgrrpNb5E70JiN9pkzkbZagJtWVjw5dPXP9VV1Ze05xkR163MCyhUeVA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/7QVu3GQHNLK5HIIzQ09kHqQEZKUEIs7BgFRFdHyC7_svGqj6Qp8VDSA7IheSlMf5cbE1-1vqOJgta8LI5Zb8O7sKi5WTv2xuSoatYNNLfYEKaeqzzmrxihKhwhm04_R3rEQjR4r-eu7SbBiNiw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/BZutnjbOE0vKvoYfL7XacV7VafeitwCVgXzV36c7SQYw4raywlV0bo_euL6Z48xhRsidjxrzLX30V84G-9HdF0hhZd8CBjXWPsoD4bkzLaexeAE3PtzTH2iAIEOdY3ZA2uXf2QbLRgms9weLaQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
