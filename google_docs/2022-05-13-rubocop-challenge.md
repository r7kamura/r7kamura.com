---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/ex-9dDzwdWxsxwAvmvfY9EdpL9DmIzY5mvRUFRoerSWg5cmMZ20p4j9MY2_7MgQ-uEYn1k3ELto6KdCaxEY1OBKGhLNogA4a0LncQi8nMrXeLMCv9tGwzf6CGwUeEZgDwHQ5xxVOvGLitkNsNVSy2Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/dWr5wP0RQOn_8GaBxAWAzM1MENVVzGBJGkrap0Wmtsr6IX_G5fy3qnbCQvaae9fonymicw592G6pEj1QgPwIzzLD_hpBwfjFr-_wlGr9PNyb2NCsj_LoA-NmJM_EpDmzX43Ljb7AbdoCdVrX60hU7A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/98A1wq11tk9T7jv71-GfBcSrh-s4vgHzFPyozNk-Tcbcm4bkYozYhnRmH-M6WFDXdvVmmttONXjR8E_Tjjh7G6MwY64eD7CZaFEDf73v1EbahS-fuB_vO6E968E8Ln7frsMYzb_8mvvhvftqLIQLQA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
