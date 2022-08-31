---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/YUs-yS1EpY345Wn2Y-jUthEnpbz9N0VCm3aCJ0h8y61PMF_0LZpSa-HDifUuumB6nV39ApQymN8aE-swM0WIyqOmaEMNkeBdDIV6pPg7GEYA8oZ8L8Eav8tC24S0Re0lgFA6q5UJ-1tIIn4RTl3CxQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/iyf9Nph5X-yaXkCQE7Of_NmjPt7YVD3ZivLCiKgQVedvDgevepwthaGEIp6OSZed2aSyEPWm3PL8Wg9QNt9PZFkCQLwxwRDFHQTsT3MoBgKgBuUPfld-HTqZVJ3KAYhUwzsir1mnV2HSO8WX69D-Vg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jk9GJtDTnR5aabFqZ_Dzjnbw57b8FhJ0Gbkvs0AWV0pTQ5G0I8LDg_5qqto51FBok9yE0KDNBRokZlAmV1PVlHmzrVlHpoKoixEQq_hOT2uF-znRYKIYj45_wLwDJGK0qy8JXUOQ9YSLURGNdwzk7Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
