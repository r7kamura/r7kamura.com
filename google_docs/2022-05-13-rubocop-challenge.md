---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/uu2QvSMoa9v7aXdzbZZeHHOnG5XOYwObRcdqGxNX8Ywrqf8YYRS1ZMFW_q4-ysHFrDxCX7wvvSvEXGbnbHn7WDDbc7f9tq7O8pT6eg67Ye47SES018FLXkmhA6W7_ofrix3aFy0Lo2Nkn-9sPuvT8Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/G7IQCQDuAOTP3mDGrvWNwPtb2OvRmuBVn64S1Kava_MaxF2XdTWs0x05aut5BrRupfxcfm4ute4mcLGn1OZv18KEcPApPuZHJS3Illy1LJrB9nar05UgHFo_l4M_0mXweMJjWSFAcEUKj0WDnceNuw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Mntx9o4acG1j6W5iwxOI5MCts2jkh16-80PaAz-rgIPHhnkm8sKWebVlIrhIIhQbki3UJcUBe1OCYPjzv5q3ovLT_fwyXZqvIr26GR2RiP4-IiYLkbOhTfhQOoxymRVI1duXWIA_nj7H7SNNat_TCw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
