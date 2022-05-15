---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/KGSz_5raaDeuVJ3YgloDO-YFyhpe40-blbrSOezFLbfdN7Zu9T1agCBTGSdtcXDM2f72TyeADsBnKRRn-KU1PTTZulAJx7lqWCbaw5CDFyz7bFT_2cHrgs5hpx33-z27aj3wpLizz7oaKtDs7w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/pAqB7ZFspL56EpTshSIfxqHTrzV4f02i7NzLABGfnAGwv4vqN8wI3Hvjldjjf_nZ99FF1CLi6ZTvxzQyiHUO-Gl0VLzF6NsEgVzxHBsL_UccdDQfrbFmx7iQKUc5uml2GgFlqrPfq79x2kD87w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/yYAg_Cfa3rBP93QsuOwseAME99YIFvRWh7ACJ3fqhFTt5rqmczvPEiYKdNBldTs4jE5Zk3-PlR1uWDcWecGEdF2Nv3a3yvbex9ZnYNgYnSE36_ofYbSKzDhXrIG-JWbXMYpW94UPrJE_SLs28A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
