---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/wIBFyozS7-w3YKsp3pA1X3G50gTCn1BI1B9-cq0OUSfU_m3Pkm7dguQDb8DHFWgz8nPdGUF7hu5yG5mgkF2KZbJk1sY4ADHq9Eh3LrX2RbGQQWm1q8PLWtUJieNYFOxQjSLNkOqQSwsyDQ7Bh857gw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/W9lzbcCYeOVGg6WvW2mlFFxxa3wXNMbMWG6cmtzGC1Wcwc2D17B90gy2OfsMyWlNUrDLLrY2hpSkrOKOnEsyCMN54gZfNt9hDp2ceTaCdy96YVJKmzvvhBoQRVjAbj02bQvkk0TdfgrzZi46H9HSIA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/crYqd9eorSOEaCHGDry_XJxoyfE94TALL07wAYRB-5MBbmbSn6AgLBKlbJaFsfkoI7G8y7aXYeL0UcPYu5DIUgiZA-NYikP1LdskVilYvhHrwblwau-U_RzOdSxhb3TVo0bGP-ivoX0Zdd5WKzSRXw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
