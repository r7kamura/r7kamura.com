---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/FTJDxsYrp7BTMcEVt9FRdlzsh63adCztgUhu8fuFFBv3ddteDGkA-7s706_2DKYysdz4z6uiabKUSx_C-eMnCH4i6Pkzc75OOUAe2H4FVNHNcC8dahgFibsEnfGiHBWzW_BM0y-DHATXzwhBp_mQg-mY3Hr5h5i53lCub-U1zekpNECISfg17AxRH0-F)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gJxDT4ZzEv9DYqxK5QrzpyLoC8SGpGs80eH8foJzsSajW5YGnraAj1eknuKbR3ZUj5tGmYe-wmej0dA-fgpOUAMKUXzqL0YlDHIX0zccdKNrMy2vjvObqiR3f0ME6rjCAa673csq8cVql0brzGVHJ9INq5bGXuzlmvAc7AbNhlU6F819BSsgEOCcomRt)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/lvpj0EDlKCWfC3msjlM0kcrbQ3JWU4r626K0p7pOf33eVEBEcJogxy4TpClK4C17cj31XKTHJsEUov8Yd8isIZrCNWya8yAWiE3Oor5qHTX_4t19OPIbCJXmFHdJpkonmqfLuNOm9S5FAiT8v90DujrXe_oTlYDMIUKuBsXPBBPkWS-aG1fFVXcaWoD8)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
