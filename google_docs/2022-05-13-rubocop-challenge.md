---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/2AIP6T7wvfhewkoTRa2ue3_oW2DITFeYebRT8thEblGqVdr4uLC1hqLJY0rb-ZRcgmL3oh_b1M8R_anRF5ZIA_S_iiv1VV-z201nJr2mMEkjgnrqh_dRilwJQLLWxM9TDxTa7T-N4i6zH-hikQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/C87GiznbjyeAYnTxW5Pbe4ifxX60KHQr9wzbfhw8aRl5cfxVpHV9LCWeTW2a6mq6RsNn2DekrVXXq72bfnGpRW6PfYNQxozgUw1eeTyyWxLTLfwPY64CokwDGg1i6dsVlC4T7Gf3FQmeBgosqQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/T7Aib-SYWJJzAi-gPBxYEg6zloi9YJEO2vBYSyDg8PNIS0oYZaAOC1gjgzdD6BqDocixnweMawLL1gnKNFebAN1Aco2YURnv_De8SabyekTIp_8SAGFpf-09RMUjN83zs5AoHehq7HC4_0ZFVA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
