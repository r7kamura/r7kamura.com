---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/1MMk3cLYRg-eO8qw4ldM3fhNRGy7EKiAHPrHKgaYlxyUk3hROwXMP0JkZUn9MmihiLWHAuQks9yycibypL_IBNTVCCERTM0p-6jtbOBDJp98hb4qSisUrdsDhE209m4ztQ_fy9SL3sN87ZocE4hH5m2kDZzFIxqZwKH0QUqvt1aSLLSqETb0EMUX)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/mZBQrcqPLMV0X4PcMPkc8K8R_SNUdqI3lUE5rs49p5auc8rCwV0FP_N5RniTHNxhuHrP611sVRrxtHD4r2dC8RnNaEOoJFRWBJJ0QpQUSGVt3NIjB70ZtzRRZdUJHDEzVx_YFmgY_dSTxBNr1twsIMgV9JMiPXuXbYK2PoDF6W_zGV7uprL37VK_)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/cZR4d1x8kwo0Z6OgHNUJAIq7s4h0Gs17M4HNpzlC2fiYNiOlRd63qYqQTkrfiPuHj3Uq7cxOPwD_Fe3xKt6XhzypnMiQOJjJv_4TpHihUR0MktQF5zMKzlK7sPS6196Kyr7Rm2HSYm72h9zqr_yXk0nWr6YJaG5OP2uME7_Q8asZAQ978bLih2_X)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
