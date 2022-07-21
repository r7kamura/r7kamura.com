---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/y1fky-YfwQzC-gDEYsSX9jSWhDkGsuT32bdt4Q7Y8QbCb_qB82p8xPZZgqhHsHXEKzMRCyVt1YygQr6Vo1tt52JtxBr06qt8wFV5PZKUvKYXvqZ6_HBNMMRrvsT7u2O-aPWSLLzjHzMukOgx6hwOUw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/nemak4oP56AJNroZxrMDBTeqO_00RXAVwIxhag6-9cA7m3rC1BcLzlgizVyZr3nrlfJqGkR2nvhwM89xq-yEabRL47_QvSNWbz6mOVmWUPnNCnFn1K4QCAXlj9iLQYE_HQ6LP3jelt3vSf6xPHtsTw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/E7uYYWOeTeLdgp1ZuskIou4SUUSOxQTSEJunMHgo_SSgUjWfHrGr8evwPd5vdrVG2vr5gtN11D9KrpxO-Bt9wgxTIxw9w1qX91jH1j_A8JMf5q3rWnZiNYPhcPT0MwgzDLeKE6NxiwSllhrL92zerQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
