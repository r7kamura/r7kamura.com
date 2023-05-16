---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/Bzka2LOvQVvtdab-TNITv1YfjSaNOpM6noFNRoy_H_IbKFXQRmnqKQKbImE8dfd-lidApi2BKPErsE941XYnDn5_Auy1-p-4s7hyeuHryRdNeD6XeKCpIbUwU0bf4lSmvobiyGKCIQmvd9kdLvWssA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/YFbE-HPJqPex86pLGm5Sv07yg61ZTovd3MHQOAVXl0TMAuODwtYjtKPHNCxm0kFDsOp7eM0CUdSTxpH8SMM4dsAC4YYVDwRhl4paOGeUE0WXN9VCV1JF6UAj9l7jWVNVlb0VWD29o7yDmB_lX3EkKg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/5SIjRk67ZXaVdadXhtuIqyB1fub2S6IzjpwU82ONXZyfyE2puunDp_cALufhs4m962MxpS-t9ub62uepy3NFf1Y5nNi2iX8uEN-ILQ8cTBYstQFfiLt-rswPLDomGloE2cZpQNL7uLsvo64JiTaTRA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
