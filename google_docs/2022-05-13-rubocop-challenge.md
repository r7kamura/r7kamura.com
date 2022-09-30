---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/THy3bO8paWpOT0qCRljQaeg4d7z_v3eyUcf2-BvrzX4hftIzhT_yzHrC097jSwMYGSQaLSKW6BWd3HKxh5FRSEbGFoDKx8sTHPSCHy_P4ByMWUt2OkYwmv_RfDoAAqq3GmRXbuYqWfNttP785rcOdKyh_lpRt2xJ-rzOPndp36TibjeoclgatKe1)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Gtbyc33iaOsv3aoi5OahjkrC9spf-R18f-Z3vFVPNrpXoso3Ltrc5kA6PuSpky60u7KXs-jnAwU4y8o_3vl0QGnb_YF2LLyE-GtkaNKBnLgjBlEyHzSx-FIDgpm0NlrGdhsFBnz9K16WCbFQrnffhQagwTALl549cRAVHWFgEo6mWHqs4OZTqBIL)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/_XtVLc2nxd2EH5FBrKy8FvJ8Ik8mmuTb8ltMuYuDLw1Lb-u8RJRkGYAou6wcWQTEo4glQEs9uHRT41-vI_1vdQsJTvtlG5Uqg5L4rjJFxAe77ZPmHuCUnB7LRyyYXDnb9jFAfqKF7PLiM_9wgkMIS0VG1-ITnA2WBXT4jAvS9JlBgCDTIwBkV4VT)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
