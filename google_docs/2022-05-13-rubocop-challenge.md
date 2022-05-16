---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/x2E70KgJkv5-bY3rYdw6spo5A5e-Q78XxZ-uy4_o01OXmCyurc6DM6HYmk1qNLbSlYttOHyLxBwfvoyUo6JffCljNB-hB9fq6_ZmgKWBrzPrexI57lhEB43umCmhnh3wzWQveFyTtRal8Ej3jg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Z8U4nQDAc9p4olFJXbKLriy2Ejnm4HMQL7Uk2aWLYv9xRm7f0PSLYYxf0pfH8HNFfGHgPDI87cpBptpQ8B_700Qh2YUzntDKxLsuweE40xRRBB6C52M7GtgXCYxp6RabWn4fyGtWb6Pr60-_4A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/vfwk0bX_B6nceSErGiFGjNBTO0MVLh_y_g3C8CLlw9cpwIcWSGHBqouaxIuwVN8dBZwQCDNR7Vi17PZkX2cJ2o6jLChADKEGIleHuMzehKep998Xrh5ERfLCVkoxIMu0l1rhAz9fvSw6t2sIOA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
