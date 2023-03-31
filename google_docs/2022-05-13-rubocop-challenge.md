---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/7oeeeYO9kvU3WJ0e1s4-qDweJJmorU8voqdy69RK3P9iZYzDQ8HBoWgm5K6VmAeH1WAPQ2D3IOJ74tMLw0umEnFUYqOgUvSYzsemMnWqeH-yM1xJRJ0VVOr51o51ELDYEDClPSoFIIgV5F9K_QJbug)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/eiui2AR4wUD8iz0pnLEDVh4so0_G97GvOyJI8jcyHSOeN1djcUvaGDW_dNYwwtBT8fPQCYxjVd627dLx25Qh0RYsu-V_GZjI0mHbACttJnbaGYQ76eCnrXiXT2IUCDCP8XJAaCuNDLl5VwMCApsMMQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/iR-mPrOcMjkBfHNN-R5PoUGUZ_40GYSgx2056Vrk8xk6yBpopalRj9Fk8v62fFKG7xSx17SBuTooKUW0kGOxTd8vFbcjOr3b_euLkBpC3xbJqDe-ipe98cKo5IPj_P1DxNx5pv1QP4A08urQgZ_j0w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
