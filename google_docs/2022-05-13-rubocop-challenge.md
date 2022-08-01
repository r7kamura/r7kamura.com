---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Qqz0NXkiCHUWJhS3UkT7aJaSbVqC-k1PxioJkbOtvBMGMyk8TlMkTmvYjNJ8fNdaYNGRZkBxhNx4FKljIUKR8WMBxKafc4GBFem2x1PfpicJ-cR0Nu0lPx7DK3pL8L9kqEJnLWGEfTdfNd_nmSe-jg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/KTe0pHZNfoP6WCOyQRURTaRhMlIQyD4ROnIC_mqOXYTSgxVWmPremBiQ3u7A9uaHLIBXH79qvkHfzeQ5XKCer9xj_xjEYb8qW4KZLbih5mUQVOU3NTC9gCdIKrXTfZHTApPUJDBxgtjpfTCg4vcKlQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Iidf6Fv7oxlM3RzDRo6xtuXYU7KqPaV61HOT1uXvslE2QRUNAoPnJh2Lg4mTjMEpkZIvp0d6g33HJHwjfMjwGylp-x5MAroD3frv4dDeo--1KZtZQLvRhB-GmhN1EX-mxiC_hON_qVsiBzpeDJ-ing)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
