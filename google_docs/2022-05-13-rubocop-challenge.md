---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/YFV2ATUzKvAX9cwRek6O0jli2Ojqy4FnLkmnZUwLO8xfPMN1JcM3CPu5V3rXElW_Dl7OpqKvojxq9kjUh2iGZCWq6j5mhVEhezdai8SXGCydL9G-JYGyeLheL8w-o6flmpVU5OxhV7LwHeQRIA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/OdMQehxM0d-7hnfa7fEZn_deQ2xKgz-MpDCmvxMds_ZNNGjG4cy8yUmbiHWQZehBRNgzFkHSCYBdgWnYwuniW8OdfxQFsiKvm08Jvuw77k4yFBkF29k6tvpyfZR6I5el4ZH7Qb7z5sRL0ibDsQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/POaufvfnMPUs2IR2nNW6rGOsj1jB1y8VpYPxbInkxLlfTYSDALIuqricAIN0gJdGrBOTbL2s0ZIHXcn35WpFlnYH94wrZ-ZYvQytRJe_rqQ7bcZ9Pua0GX2x5UXdmG2t5Z22zXfL5NxM6ji8DQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
