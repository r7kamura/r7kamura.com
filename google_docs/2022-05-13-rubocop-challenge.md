---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Xo4eWe9J8ewti7v8DRDrm2TbM2DdsbJP4NW60Ya9DocQm6hKSM4MXiat82LMZNSGxxxRb6B08tv68dz2KeMssrB7NcLmAHTd7Q7z1EXNHZY8tj-ub2-pts1g4-mpe5u95MMHdhMnFS6Cp35sbyaG8w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/qfPKS8-MP9fwOukzLvDVl8QO_Q1wlJy3yjGev9F9pQVgkwZ7OfuhkcLnpRcufrbzgZ6r-ngEtvnxKarK12k8NTVjxuvw6BosHrppqnWlLtj8CBwZQ_531LoZiJa8MmK8QgkKRduz0b0d0RhnCzZSIQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/yS2AKInBka5rfQ8kXNinCnSZ4Q1ZOFIHxAMyAO93h8M810-m9VO4H8EhDB4HeK6e1QApnJNzZGe_yEPF9dC7sk_KoyyFzhUUZT_F22ron2koOSWWa1hpE51w59bQq8wQ_EveFJL_ZhSVI_Z7y9dIgA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
