---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/n6n8a4BzUWbFsED7NZGLg18wniMLCa4kEocT2kUMUz5-1H8puk_dgkV0DWM73hLtmsrVAipRjRa-C47fk3XGcqz3A27pEuUjgWEPCIN5R_acHHj2VY3NRcIltrbBG4BfnKwT5xV9BoEzF5LLhQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/JwJIjJNCmMx5WSiRRCRerJN_QZVkEvSHfsSOZ27uOVl0u-QK2naorEfPSlrjNqxcmFUGLLKL7ozbPb2pfkQgvZGcH0oiNjMSXEsh1B_ifiNoQBYrb1zeEhZaF-32bIeModmfyiwhlN6c7Re_3g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/eFBTmi-0SRTP4fnQl0sGMnjiWlqM0SrAZUcPL1XoSGg96_gppPeD1n7C0Qy4-KeMM2lEsOTfjMRotOwfeKNMrcIvZlgW5SKykODb7WsIq7pdESVC4yVpMvQJUdm2-8QFDrJoL8blXMjpQxWVgg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
