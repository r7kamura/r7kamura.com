---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/7U3-6be07xLmIWn3bPQDi3gPvD6IZ1b7HamDeXWFvXqiO8EH7mrgAfFR0fGGzT2TeIJokEnXyTgie7qGVe1fBEfeBSCdXTQElffiyXOgnahqNjHxoLfPTzYax5PPaulwEVJt1D9qpZtAdi909g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/7ZfoLlVkLDnq-d9wrfqfOpoVrWk9iVHgd4E0tcXCUeDzkDFUpftdCHpPd9svHtn-fwxsK2R5ct2raopNa5P7ySVAMSGuqAZFdO85fa9XUGqB3EtPEZUgEFtHRjD-2Xc4x6HA9LccVNmU8ANRcA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/gCpzxtYBhlhH1sok1rli0eLRIHL1hKveCKvnyUTWK4uOjYeMTdnwBDv1wbyGB73j9lWyKMB5ZCbIxCzyExt3H3gqW0bEzNnYqyAZ-Ki3jlZG8ejgRcuC9boXPgeGOXBdaOiFTr5vjQVqawUORQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
