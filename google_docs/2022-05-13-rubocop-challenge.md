---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/HjqIe0MzS7XoffuPx8kEHwaDt84jX-6Zez-4vMSzBKNXPhDrLiDEa49As49eq80D4KRbuTXz-nr0xz87iYqs7dxCWvrQ55R_7-TcYMzx51lWz_J_Oyy3BAeKzYIZBhJFMPM36u-FUm0GrnAXKg3dPRHQB_NeRAELbVjsHmpYx9kIAQ59CcIpSSmSmuxv)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/mb5BTGdDE6Wk4ez38Cixptmm8hFLVh6wddZylVQg97DG4kMtNEaxfV29NrgyMkUS-93T8O9OQPQ6crpY5yv_2l1XlFUhB5Oa54pHR30JQChsMQaVo9GRs-DujzeZ6OOwHzzfM-SnvALYXSd0NOqxBgHxRmzFEmtOHZwfpMzla5WZLIYHRXmfH-c7Rd4G)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/goOatZjJ-zxene7NJ5N7h5dBgGRCVu9lV9irLNsJydHsF40tDkAGKcK5L_w66Z_5LWQB53tVIOxcqKarcmwjxtA0TVDEz6Ucp5JdQAtjuUfh7c3JVjYZ_nXQDst6ml923u2rwDAkeQFXQ07dXmJS6sUOHMbwgD8SgK-xvjsXggHqfJd2xlaeTrHmfzHK)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
