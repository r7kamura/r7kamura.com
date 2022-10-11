---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/ET7WAR6uwCU_UKzpnMqmMle9N5VGUIk4oVCNqZ646yUOh2dCF9K8-Ik12CFUM14scDZInE-XHebiDLmZKEYNyn_HiVqnkp7hEkfQvaQuaDGMsRfcfXMCsXtsrweQ1ZlyKzncB_hXDcZc2eSW10S718PcZSGpvZRgPfRvDOrwtRWCDLpCiuXzHPbg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/oo7KP-wrIOGcBC3niZnqb9A40wNeXxRA_7ZCILijcS2uYZ9pAJK-xs4MeReuQc4p6NQSxKM8t34UgrCIbkAu5Oco_FQyPS6sbBKh1eJ_giMzgzaXPG9Bx_uYfgXCCVMk7jBjAYeu0TQlFndA3PNi54tzMbrIEoccnap4dD6WL3RHiDx-6CTV4MtN)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/99izOVP9nmcYcqUUiCYGEh-qLx9Umn0bt-qeGUlfLKT9vetZUllgECm4223rOkLY7KgWfwAkJ5vJOTU0EVrCN8WscsmALYbz7bB3JNi87OyQlas0X2yyou0lMf7dpVr4r-xDsIpIC4JiBtMH9RJBdzBz5NFvCyZETny5A16L28HXc_NCqWCy5Pww)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
