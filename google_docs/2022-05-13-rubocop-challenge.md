---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/xtv-aUYuepU5212yRRhod3vkMLBFwJM-T1IVb2rMrwTyqgIngW8VHwVwB2Jq1JHk2MLrQqVzrH-0cZz7YFJPza6BgtgIGGzx7j7Mtzd83Gs3nfYwpdiKFf7vMEx1_N1wNgYgrs8UloV4pw-m64KikA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/DP6S8Mq8zdMmekotKoVl98d5oK-rEh3Oq9J4IO_Mgd-_tCDpRLMoWgP3HX0eSwJ6VgKhqFnzhx25C_4dq50pf8Ds7JvQPRKEZiWpcfCfLRY_dBMKbiaZoXJuNzLAjTgax32ZphUhFoWas-tzycTMRw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/DE8tI4OwdSrWuGp4ZGcroKViX2kkdkSt9YWgqJUaVd8jxa3xZDfuOYOt4iCn1YUEcRYgcovG_N7gWSQJygSM9Q2vZPhb1h-Kb9RLYhtWMMmuAwl6Pujh-zeRadCXmsGWBSe0B4EjRyZxNRLK9J04wg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
