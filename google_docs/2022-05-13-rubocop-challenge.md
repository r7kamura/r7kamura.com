---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/OwYdJMZ04EjEjiD93dhsFnbaNYLvEaxT3TsItRKiR16OioTZjVZe6oovIGavPcfsDL_wbzr1hpxZmt5PA6QFbwpmDwUuL8yIHxAN3t-AdxkbacdO3fneWPRb-Kwoj9gdy6LQqzxyRhjtRMWA8Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/n3z0QajOzGa98afWrOAGBa8e29EPv8YPzhGXrGQlyEGNF4F8qNPWvePZCnHUDJYv3N74HlFhNJg-Ef6n3ffdk0IOj7z2_m3W0lClU_5481fcbWZUvAvKY6BMONm1Zb1c2mzdFVm4VqKYS5dFMA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/sbOY0WBGmw3QO91BVmxSQ_inZfUgFenFlFtee7Rhp_3fZmTvDnNJ6LpTBDv7KvBL67lcLYvfeEsHc5i7cJoc4B37FCeptAsKfeeFLQowWZHWJAflG-_bOf0rzLFnXXFFKtFIvZt591ecPwyPUg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
