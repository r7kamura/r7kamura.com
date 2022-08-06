---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/M88ZIa12MjUtcisgsY-UTQjZNnz68KSHJwpmTdrD2w9kItACseWsBgQ8ydQKOrv0eF0eGhAqyYf0p6subDPhBhfvpvSEp-OLa5z-MimIq7FOgEXCl7CuctIg4xZh6WluUIlJWMRSllXYwbHadyx3TQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/e4HkcPAgOIZRQaoOQ0RUlyPz_CtwNLPNPQOFR0u5L1OjID3NkK9Dgsk2G5plF6PxWshqb9YvU_03BYAlsQ3koNL_TXa0d762x5bUvlzQNCTipTy5uYY9wPPkdpeNJYOkRbFxaiatzuTYbUajb4EPbA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/LG-GR7j1Tlny4fgclepIBvNtS_opEbX2uF5GhyJTUgr5mwtd2XxuysDYamY0JbLpEj5OAcXqust52P1KLKPo6eok_ggy2fckBMuA-vTe4boYalNmREEKKawaDKe_QQk37K6seUGxoLmfelynjSrUPQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
