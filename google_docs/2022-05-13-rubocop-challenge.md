---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/KQIjzbIUpzr6RXB1aBrUyTRl6fLDsF9cg3IB5JpceFPeYCI1uSrX4mZ8fTsBDr8dWhphEIBhHKt4qbJlbw_jk4P96Lq9dqdoJxj_AiV0qizASPDYAIIVyDlDn1KFBkZQqfkUdZi_HpF6uUEVVQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/OCDwxcQPgc-_yJcDoDUXx6URvMtoNVUgJWaGkwr0OXVfBaEYBZlr3STGUVoy6nZgaz9gpIfaEcnKi-VOAyorH3igLshqi5L-TsdOOh_9RjIbElAeyFHFy5OElinBc4Pmemgkdlzr0ZSGEhdG_Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/PGnj44B2vMeafZKAV5I3BsVjPRxkHGTj4Hokym4tCyI-thR09vaEaXL5yhPifQYNHI7HoF_AjwFuRke8dGDyfNj4Dhed4HI_v-nrIzXzbEASKrLHVTFMqJtTEs0UNtmTyjN3GwspzFdaPSNd1w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
