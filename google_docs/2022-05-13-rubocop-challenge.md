---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/jnHA7NJ7lwtP_QfS1GyoX3UcIgkXRReX_h07NLW2fcsyTHIsM24D02B3TV4nvgfmcElVcagwj-XsM0u7ZQAZQFPTbE_g14m6TJQhPKZzGOhe3fN5F0TKnu3N-ZZos-RELsw-gA9v9Ez5jw3wSNE27CrPe21Y9mb4fp0Fj2QSB9aInIzCcBm7AkRu7rrh)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/JAW1ryehU12rBStEzpTeqRbM_2q7Ko9eRwJXx-LSvgcx1MUCuqumXAqirXbifADR0qU1oZmqPk7YIaMZKzVN-_BZkXC-9VnOJTLRbdUM3DNWGVV9akioFFTy71mryWx0LWxl-iDQBcqk6uqgTkR5-KqeiTu7xSdD69PEDi3vBG-9Csrzqb3OxLK1bMoy)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/fPGqkyssU07Ipbbo91GhZ0KqiYh1C1StR-RTTXlJG7Mz04k-dCcAw3s0d0QwHEGCeiy6eyKoL9hFDj5XpmbDxh02BgLWpllrGStBRuGMwOmeXV170B4SmP4bmLLvH1Bz9qRIpeasdUREYPt2cXh5xUtgB7Y5rNgoWDsNOPColYBLgdkFRYzlXVvomZ7t)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
