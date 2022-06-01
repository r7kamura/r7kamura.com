---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/tu-o0GYbo3Jau1EO7v9PScSRozxgQeuFAnyfR5A465neby3F77VezpqB5XQ63eUQ9KzWJWwzrj_PadmHLd_n0ebNv3YXz9zHUT4ZEniGq6Uslt5-1wYvMFebPxpV-Vs7Vpt_I4_jhIBiztmEFQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/qwjrnPVONzzbeOVCY0roKN4KnuoFel9pZd0p1CCxshK7fWGD3J7X5dKCeEIS2UHcB2Ww43NhMHsJPuJSL525tcMAM5_zdPmFFnfxZr6CDGL5Q9NBzrYILI3yTRbRmqtn8m5ZwAJrCM3CpmoLAg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/VEBjEHv4kWKd6pi74P9TQbzFHMTmD2AVYQcabXFj0VbO30m2C5lpjBSuKKXw4WvElb7hzDpsQXMjqHdJHI4HPNB4QhnI18AHJOxUSDFE54q6-6LUY6q3Q_urA6fZa-IHWBJQmNfalCdacK8E8w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
