---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/LhCdQ2PYaOYdjUsIQoB3uvAIGtQFjHqugSXFO1fkDnPa3WEdQABmyCroPKSV2iJCBeFsK6i2hzh1tCeiw-5fl24q-eUFTlx6kJSWAuztTZEnMb2Ke3AOC9u0K4GTgp5kFrgfbasJ6dazQPdadQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/dlJEx4AR892z2TcpJgZyX1aDjR-lhu8nb4v2fpwdzSD9XlETJBOvi9nF7-I4w2wa5-xr45iV7r8pjyz5X6r2rlfDOB_QFOxRZClHldjYksJEankkhlOyCBBLfGEcSfDml-IwBRVGQdEafQvrZg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/F9M9rgPxkXsdWyWLnT-vmweabK07ZrXf1j0FdEbj20XKnfGNSU2lUGi63hxXzpvHZrxKtbYAx-7XirVnjjXH7v2Y2fegimOSq-qt-2w_5X0kopavSf4VZaEOfzWmXOomhvxRfzwcsKvxzNwvMg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
