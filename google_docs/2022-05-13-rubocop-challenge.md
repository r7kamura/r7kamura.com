---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/yXYpPg99orRbL3E7ny3Z8Y5he7Q4v0we26alavUZejzXchnFUVWuyTob7wfMwQFNFNfbBEipkDVpkuSnOv8hvXEPk3jEIPysUNjZ871kRd38JfrI3qAhkcdUYOT97hg26HzdF8a53JxKO9F-L1rBYw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/0gq_8aoDNw668duysUCZ0uS7zAOeJXkFnRKb8FCdfAIZQ3jg18A-OeH4nXsw4OnAc2oLmNEZqEbE7aDCSZc8NCSORDtmDbifzrYcewglpSGaAKcNZENzX2NqiDYrRh3o2QCSjaWS8eV_tdpKCeE40g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/kGL4A_o6pvJF1SBiFO9bWeJnYqTiFPbZBPa6FIHddX525qSsOZyC4KlnJSUcw_6dKW3GlM3oc0nYrJBlkdOFeXe8Ot4-PuBrxY7wNo-g0VAtwCtyjAfibyykbY9P91Z8mO0louSq4GXRiO3dN7uheA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
