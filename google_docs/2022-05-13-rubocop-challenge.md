---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/r3ao01jfKtyW5V9t4k5DHQiOqKjeVI4FqhWY0DZ0fv5gdiESCICDYDS-lrn322BWwxFUEhJND_cSIn6REAIhpdKmdejydK7t2YZPSw7AU3m3Jy9ZPv6RMbyhhVxnNaUCnH5zkric-KgVmmSI8XnODTvl92HJbXSimstMyNKIPskYptckZkctTuhQQXxo)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/q--zhxbsBPByKQ2JaWrpNSNWEDEghnqL9Ofn1xod_V407MlO68emOzMHPGcnBTtlxmGKU5dmjSGMYqRGzay1QOnQ4cu-kPNkM4BnTzqq1_pBmr58AE4kxfzNRQcvjaTUEMv2smveCVJeeDRCQfgOwrQgOKSZaJDRuEFqdGccyDEBeEsJdlsJUHbE20QG)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/zCSKxpUFj-Kc-EAfWKOdmrbc9l422sadoYyjdN3h9sdZ9OU8cq9V_C2RItxV6C1cbw9o9l4hAzRqk2ePFU9xShhH3ZLNAcm_1ynE6CBzZdfxGxEGxHVlGxWRoT0mJkkgDodqhCd_8eFdxaZVQrPVJauf0SkSrWCp5zucY0vhQRgBZJPpx8sllv8c0TZ7)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
