---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/rX0tVI9aldx1jqdBlDvNARspVRQr9befh3hZoglho1VGHzj3QL51PPUxLXK6SjZ2uPL41uZki866JAZqxJ1leVK810ZlthMnPPuvq6GxpIE5wYg2QZxR3CnWfpudFqjKKNDtcP306ryWOgChuA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/jiRVkuTOIBE77BgV8dkSG_1aetYRk-iXz5hKo-vv5Xb6C_0Dx5hVSN31XWPemSW9I1fLHETcSg6TynhXSDpCdtM-3MotFVw43v4Dgmu6lBxVP6uIicDBiE6dlISkPHIFZTsNmwaai-nfCx0YSw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Ja5KWVyQKDrfIgKH5z8MMk9TrHjrxhSQmhiKdOz5hKriYGVmsGBpNy97DVUio0puHRhQmU6rgQhJpSe14xZLXUJkI1D_qXkyD0kzeUDq1y6gGNjGvBvetReBriVt0Ti-4LMDAK5UypPh-zPZbg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
