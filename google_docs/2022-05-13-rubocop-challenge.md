---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/JQPQGRalNcRFZr3TYxyzoNmUWFvTWz51xRYqZPVtygJ1YZKlww4FawSuBOWWUbZypo8X7AP3xI9AtgXqTXmTRDCMAtNKNtsEfF58DayT_kBvmeMz91hl0Tx5327KqGnexKV7I-HLB9i6J14guA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/6hPX0rf1UgA5oNwzd9KeDltcnfjd5IFPXBt-o9KRC1HN-k9WcGllAbcNMvAYMMIiqSMNmjngap00d0pzMMIUOSaqDe27iIjBwgl-gD2F5nb27MmE40LcFrez4Reb_J4JY-qxf8VdMrVQ9_u6-g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/y-KQcQIin3V8i1rDAZGN9k7bt2n2YG7vUGiThZhH1mN00me-16BBrAnbJfsGVuXEPQ2I1k85w6-_xUysMv6iqflc4NnL0Ed26TiK3O1IS7JQItxkK-JN-zU8DlMrM5TbDg90jn-Gl-9NlhwDIA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
