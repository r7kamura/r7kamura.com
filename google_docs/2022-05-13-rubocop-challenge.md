---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/P1l6RgTRrui52Kh-USIG2sWhJyCs9UxkwZWhMxJvOW6La9gZmDdtZR_dvEQekZ2QUz_v6uc0O3eTQN1OaCaDDMRUcOC1s8ONajTLhm-VvGjqBmXu1s-EqnLmAXkEIS1kpkmWVW5qrVjmWcpqIg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/oNRA7a2Shg7btI8dte_QoHKrxm3Kz0UzhvHKMtPWmMEyou_vlsyU6XvVkoMFC8NUtUsgf55TAhzEws-yBrikUdBtWRz2D0Vw7F2xULkSZtmSDB5Ov1RLgjpJRinqB6BzqsZE8mpb_Mm7R1uNxQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/FoRs-Cem9E__4uR7FEsQXWm1XmzduM0YAd1Susdwxw6kHi46j-jfMn2bwmYTX7U8g4Rly8yJWh9defHb1vBH0wQvmP8L_RRSlNCwG_k3S8WrhgdmEPGofDmT_nywJ8wi5oBvnv9f_7woWdjPIw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
