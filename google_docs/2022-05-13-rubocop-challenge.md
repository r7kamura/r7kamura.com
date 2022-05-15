---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/DzuFGMZypOmehAjXgNkszb6nkoxA0-fmmSLBNdgLdoVw9Pu6AeWn15jyfWHupi4K3nvlmdphkb1fFU_elC1zay_F75Ycn57KuwFDRR3W8bXyVgf0sqCHCJR-V4etbATJ-1H-FRC0QRsEt0zzPQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/ScnZzXk_TC0S2kuSHcIditJiFlZzjDN9fM-1yuCk9hXgV30O0_7icGTkjJINkE5-vyl9g2Sq6TKC1gk9XWJh7b0x29wzfvgKEHsrOSlG-2i2_OwGPuWKSdTbwUBCInNDPFgSbePoYgXbqIJxKA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/gX89MX4tdahIJ2CWUC-giYk28ARNa7h6bWkkiy1S2100e97FMgL02cSGd4pAibP7FpGGfVOULZVNua_5rEsVnLt-AIVAlflrhhkZ7cApmssq0Tz6QnMk5q2eiSo5ZBhwaTS6a4jEV2rHPepnnA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
