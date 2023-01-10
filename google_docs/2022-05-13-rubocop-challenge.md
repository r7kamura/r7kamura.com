---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/r7irUTNB6_I9k9VX0vmk_Qs-JuvtzGY5OG7YrLhiI2Zbfmlv3C-dNpkKFnda-F2Ix1hUd1htjGemjHv6oOF3-2mBwqzmo-sVqbbRto2F4pICPPO59XeKbrlUBqgxp_vMv5KbmZJFtVHoHrW4Z80d8MorRbrSBP75wsJQ9kMKLk2EjhsKcYYfnchqFA4m)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/7W3x5UYWYq91I4RQP0TrkbwKqQE155IVpzRDIfFue6WNOZ-IIBN0LGJgsgNA4U0Y-y2h7XG1bjwimwaMT6kesSwuIuObAwUouNQiIO_JDNWP1TLNMs8ourzTf4X5m5Sgp3QEQ2JZTeGYs2tVN5eKAdwCDvCNjeC4ro5yOt71YBlqggDNsolO07xK5OrR)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/-EbdD8VCfbKFBltEBlBOxcVOivu1MmPgPyK5BuYVQeLueeipJ4TRnpCcvyPKXTZd7IOTSXPy-FrnPGXKtMqUtXJGvp3ZUiqS7ZvjJxYBN1eUSL03hz-FkHDRLpfhiUUKS_jLanduqSNHByG6fc3Xltyx7RsdSCB27XDD_LixqPgAV0EHUFuJVFC_o4H7)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
