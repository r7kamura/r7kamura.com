---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8gNAn9H2ptdmfut8V7jrvaf7qADigxITdU2TUMff4tDIjfDd4qTEjbR65nHtOhcCKSsvv4AErAMtS9BPgu-Sgg6RXLZ5XeITQWHUZx4zmHatmpODYIF41ym1keDK8HCrhoFhq3gNEOUttEkVew)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/S-sVfO5CyHX6aJk6Q0HI2bkrwJXhDSThMsLd7gWFcYGBsImxwZyo3slF46k0hZt0iINvaXxXA0kkISsdPQIdwkPXu47S3fPPmmJXjdBN_1oeGAFiKfGSCJINP52ZazW6k_OM3mkVpZcT_BKJOA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/4daMtih-Z6i7xN2Oc1A3NKTHoW84y4opB3rJGS1ynoQPktYhie0_DNAvlWo4VbyGRbLYnpnBMbv3_-HqjbyYfotEUsNB5GWrL59-x_PideWqqQEN2VJliWjdBTAj1jxiluuxc0b4IrW_oFJ6PA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
