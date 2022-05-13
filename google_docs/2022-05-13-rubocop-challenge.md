---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/b6DYgzapL22a35c6P0TY4ydl87KngetuQVoPLdDF73FXvJ962u0_7deTtdTm7mUeDQXd_Wm3tL_nvHLFQBtKhEI4dk2eEZOtxeATSr7Vs6XpifL41Cg8Sht2ybX4H1RRJnbpuIFNZKOenPEYQA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/iihj7fZa4k8hJUc9oulixwlJbpabSxaCDkFR0HT5Ee2RNNoFlX5Mg9OerHrDjlXDHWckWbhOd9TvqunJDmxMwlS2TvzboP20aYKFPC75OI8wIT3iLg24Vf9ulqXpsCIqAJaovIWJxX1HrKpinA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/0i4lViZd0QmehvNRmLb2f7nrjSoQRlMLVEwnOsRUUMkaiRuoHoh-GlJKIM2EWB1CDWkr0ZkW1b_FYjcea4iGq1z2hl62_cnIysSC1gDtDseNKDbostTzwpJnNVu1LOtEq3FRvNtMLmDdtiICCw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
