---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/n2HyGfJFTuVhan5Is3lp-dwQrJBTjd4WCdKV57_HQ4iPL3SsoUy-520-er9j97r0aLhJKHzVyoH3hUtBjT4CLDQPQNbBCnJhaDT5gHBcBYSjYZquqgIs7QDN6ThdAZK4deDrKYyr1sznMT6pVpWDiw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/p3aSDBT_hs_cjeb0db0ztwHMyJLEqr_fkyovZ1dFIeMmIehRFUH3Q97f8zp_OWM1f6DWIJcQMqml7jfrWeljUCMGFkNwh86bdN0W6kGliSVy1pUQv52juced3izK2zIlBu0E3JNyFpMjq-NqI-Flaw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/2zeALC-pl_Q9V1WFCkjPuIev9GZYLNTKrT5_JiJ-iDQoqHG32NALAZhWse0ZTdq7GzfozIx6WtYJaJG88bgEHn-kPMuC3cme-frCZqLBAmZMXqHGa8xlfIsnfP42ONHCcvkVtAZsSSuO76iXgeDTBQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
