---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/PkKFhnsuny9DJ0qAnBf0Ta8ah3AUrSlLuQBVc46Efsb9qiLFuwlzardo34Bt97RS1iHou-qa0GF5pBS6tJaMvc0ViYr73ZKtXLaU8nVGG_YzAVo58NRdGx3CPQKsOjys-jsdhaGfapl2RG7Xz-YJlV6OrePy1p19WJlHGZwaYCCRLZzv5M6uruazF9R-)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/V1NNHeEJA2E-EzrdvnyIgj23cdRSitPxzY8wQon1G1ETgP_e2SoSrpG0nz49wX3bLv0ebCjfO0-vaar6Fdd0bHGhRqqVU0xcuVU0SrzdYg-i9w1bdlq94PkNsqOSPwTY7TtUM2VQ3VZIdwoJDKefz-iunSEVoWRKfP_N3tndFPdLoDHN0mxtrVbkgcd_)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Dof3VYXVuiJxulmfzDbppGmkg5-tR3LRHf32zUZBzPDGVO6PoZuxKZk7d3vRJzcnyxnniEPWTGo9jKAtKX4Zl1YopGb5m4I7Up0wxMhv83-TvjWa2fNO7Y5N6PU37OxiZteLuIZBGJXrNuUatCyHNSYa4810AlgniE9ZgANkeHv9nAwjRfpaNd4h5OAg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
