---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/LUpZCian3lNbc6MLQ4Xff7XrOLiidRPlg91CJenxvpy2SzJhXF01qIzPyxtiRINEOFrFNiOknHLwIvUs_HVAA2Noyu0aCsrRx28O-UjNOFURB7Z_uPds0qpD6WOIxkrWhZjTL8xYCHiZ1J1XJ9tG1w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/nxE3NShV2jj5IAYShO8rBpUsZI_Tq5hJDd-Mfz3Fzs3Yz7AQU4BniV5deqsucbNMhsJTFtahaPRpVitShGprPuyiUpt38ZVjAzBf6lmWJdhDPjJMNV9TQHYDhuUp1A_1Qds2fd6LMR6FEGbHsFbnsw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/nzxfTKYeMocs5Fbmld_klJjMVX6d3uDjpNKgFLtLf4pWmazGzVcLkEPB-wxQ-k3iNkrKq9TbcvAoW8b3i1mbGA8Ca_f9I6s9_OE6Y2h6cwxckD-eQaNCAXs8ysrkapb6Uo7vgnVM7tXNIbPLN46j4g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
