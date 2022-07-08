---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/E5PaqUWmtfONUEva13k2sfsLsqSJhW8wuHO4ncaPLhLCRrsxgHeLNPoz_Q7TwJH7b7ZfKjjQzXocCaVW3zcTcuU7KbHVT1qum0i_6yptdsltZ51kK1BxupgJdA0Bbdr38AMl9Dm8HE04hjzspg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/RjlFnTDM_CCaIDixCSpCOCyGxQYupT0CmQ9w1t_cVYh5aa3fETfRcayij35pmJphPPMgEDY1TW1kL2Q9r-sEipXBv6ajpwpN1dBSd82aLvnHK3v-GGXvJCmkex8vHRZnILvlolc2JIZT2fRvOA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/nkvA1n5vFZqfvq0wOWpgjRHCzz_GjPmrll4zAVyhMnPUlQeAxdVdFWCVBe1BmmWHs3tlwehc9eaiIhhj8IPesaqzbipp9yzOrzaokhLS884wfKDLcMIPGiRzgz8MElicnKPevyDdGSZiCsBGcw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
