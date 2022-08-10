---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/mbPeZuE7Kt7uDzSKohfvCzZGgpiWYw7jECwCmHR4Cxet-b8GqacetgbNnstoJCoUiO3kJ4QLoZUmlLN4m_UslAVaZu11iBB7qoNg2IUCQK2wfRDVzgKEpS2vs_W-xMA1_450yvSRWaHAOFyJ3h-5ag)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/tfMtBL23knpxP4vvLkoxe59CZjUpqxSLWkQPR5vpdITUxK2RVvJTR3S-uzWMfRANdVrurMg2yZUVBsr4z26KtNOszP7ycI5qmGBTgVyUywfIPOMgJM5x3j5b42V7SIeS4sPlDHReg_aL9rMLe3wS2Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Mo0zzeMyfS-0Tn4KMy2VqtRR9LkZlRg7yzUQMvECAAHBRB9kmqI2ZqqmsDXFR4ihrVeEyWnhROr8qj-98H8TxSTYhdIfXQ_gBVLJiudegNV49PnWH4xxwt01tsrAtQ3po5LiQo3oQhIk95GJgPZPgw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
