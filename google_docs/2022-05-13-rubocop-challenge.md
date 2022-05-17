---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/fzRaMMUDKFSa2vM7jxaYPFEVm3egG9i-sdM3YWAgLC1vduiPQM4mbyn5bJl0TJDrrpksmmQ2Vyc4LVgdIa5_Kh0FfXrC73S2nwSn5WTLO8WfOU68RK5fSx3OK-7sNNB7FNt6hvtojLxa8Zsl-A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/wEOz7gIjlFCFcmmVr7W0GUjxlLp6E02gQ6kNNOH7QRM7dR_LSouCjzZDUUQ1Se7g6H1RMEpklAuXXfXwUUQhrpZc97dezcJM3jM7lt7nZvj5pA6LTBgtLWZT3Nay6XVs85KUu357AXOZU_prnA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/tgQjmp6SNWHE4x7Cy2Ek0gErkdcZRlvcdcfcK_vovZli_0l-LuHjAAujny_TiI2aTGTB2kQEQ4tqDSQ-Tco67oZdA4TbJ5Vzn06dPEKSg41EOuWzWNgKBiy1DSXArmXL263PIZ3ObJAAziwwZA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
