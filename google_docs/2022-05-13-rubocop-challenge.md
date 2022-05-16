---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/xW6NJOXC6ap-M9FgCaHQldtXvdI41W5rtLrhLwfmJ-2O57-V_c-G-e6WQvXMUyCQToG_citkF1v5WcUQhmrplUihIVx1is0lEXVzj7BQVX6pgwDx4s-_2Y7UfpSe6B4lcMcdzii4QArVtooBrw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/W0_WNWllTk58i_GiSbspt1TR3uK06iRUGhdQhqgnA0EbmXZqOX-rdL7Rz098o40f4fkGmpSvE7XOH5my_tSCV_SAdUS2baOy3HVhy2_C8ZpMYRedbUOIiElgLLiAZgyjJNXWKhAgv3OfGQpdtQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Nh9gq84yc6nM-y8KP5k3m9ln1Oy6uXr1QsuvoUQgm0wfRtl932_OSp0o8MMomKBesfsO1_GvLvDHT6FlW79I6_9bbmrpkND0vP1AgQXyRTnHAbLAVzQ6hcjhzQxuLsnE3ozCd0QJBpH9CSgPjw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
