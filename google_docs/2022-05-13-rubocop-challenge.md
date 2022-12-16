---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/grn0ImpFaZHPv45P0rYZFUJ124RFio-d14AtSkJwVAhVVKXrFBWjaYarM801HF29NRbw5wZuSyBe7xi5uVWdOE8Ngno1sgrVjadCzJD55etqtrPIGiCpskLU1OvH3oGV3R6JA0ZUJZt8a3imfT0mhOPQyk5G_L4P9ZbmZgEDf0517TZnEQvcyV-xcmF6)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/5E3QmLnYULTFvwUoKBsmhg-MCNa_1BINHR61Q9Jgzj4fcbvsiI7KP07cXNbtnMh5kHoFQl9JL1K-1UbrF85V0imozZkG778p-JUlaw_rcenLiAvaIF_xCMziGRVF42NVADFU5EzXpUxGPUJt-AsVMDkrDIravAjvj8pVueX6r0i-0aQd-0dwCJU5p6rv)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/ElsU1KtPA1lrR-z3O29x5-76D1HoQEzCQau0IfWtTVsqIeZig9IhPPJDS7loATF_wGWY0x-rFkLAbqyQFdGbuz0Y8UoWtxZ_DKfjpwPd4Oq5RWHAc4XguMNIHGJ1N__yERgIxOtizMfVQEpTCxhw2fmuIhumw3ycwgSvp1CXdos1R6mFwLYSNF6X0BGO)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
