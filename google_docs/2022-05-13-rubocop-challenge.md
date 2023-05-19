---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/m0sPlatsURBEEE-jDJDVYU6i5LHNyfSryXobWWi9FawmRGZ8o4V4Ef0QHrPj8bgl62cy-6RyrA61YnB0X8AttfN8gUYjeOYIrAc-YLeT625cR7j4a6IsDNYb8xFO_DDS_0UI1iqRrhntPKMKDgZGzA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/f4_quvYoT33IX875mxxsSgxIFP3ZpC06RFRz5Jmw03OupNh2jB-3GM50nAwKt53La5tFIrH11aQ4z3b3e8N9bnkIWF77VGQxrb31Z-T678guylIACz4LJl3vdtD6kbIbLldkXmx4HkVcgtPczJwXFA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/nK0O32uHQX-HIpyBbo1aTwM1c6ilURvgl1yNd1O8PRrtgWXg9BgVNtKwX72hwnGFPUlW-2w317Upjo1Kz_zx3F-1LPBUhePzgtMDW_KLbDwUb8h6yTp-OZBh6KbJRjv6CyracNrPxGRuNkstIjPqGQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
