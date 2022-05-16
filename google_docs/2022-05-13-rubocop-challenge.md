---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/MBS4dekoKCfcb8V6ARoNriKDo5I_TAnaghVAnWgIEWSUwfT27fMV_pnjp2Bg9IefAdHNzjpmO35NWhHSiLQmN76wO7cxc4EY5oDVHW67JnaQT2ttHCZCzaFVgkCA48NnV1lT2BriSmHQyYv8Hw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/qRenhXjz4H5wAaimIEvTYE_w8dlDQVeRnZ78c4PC30NGowiOszwg-p0LgH4z6Ac5BS0UsPoVYpJ8NDDHr4YK48QcZoXuHfMuP9PWrtwal9giy3NovPtENFETRxbQ47tA2kZtIFE-v7vcvacSsQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/l7wVw6HFUoPk4_REVeC6jIZi_5bX4Dy54n26LeIQu2Ez7cbna6t_7H-FFfl-3TPSDlu6RTQNCh2McTytxrJ57G2m1QO9qIPrsERRpY0-nVkcITCV9uIRxvuqMVNlMTqUWqQfDUU2CG9DtMSl4w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
