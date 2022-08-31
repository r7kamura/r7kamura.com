---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/TLhK0JawXofr0okDXqJP5gGL4B6yfZQ0IaWaSavRJt3C1nrirkj5kexkv2pz776JFJ7YP3EAuaFcJg2pgy1hb-I3zhYGga3tLWtBUArU4w-W7LrXXSago49XCIpr4tUtmlc37fETtikupjWlT1BTTuaReq3HjLbdsGQ6Rs0SfrhpBVaexyo-Vprw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/lka_AVljdUWPHSpUerW_w5fteDiNJxONwkpRi4msRzR3_L1UlGPB-w5Be8XGZqM5Zc2iU-_mwsg8K1askCNUWxQq6KNn4QisfNNEwAb0WPGtaOV7WjWRvND5liKKh_FlQweRqO_iLIm5KSMqtpodSJU1rArvZsU4dokbQpyN_TdlZ_btaqDdtP1r)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/BlRyhnrPCVV2-cEidCptEBOtqGDVu-C1on6jvQQFjRicOVOqpApASoFGCt9gTwKftkTmzx65FRfnFkSBiPsUKGt0rQ6Qdfbo4NETX-Rwt0PRgVMljhRfuto7BqpdEyApCp4Z81Two6keZD4AMQcp_ZNo5NJdUaZUUcEhPSjY-raIvYpEhsWOjszn)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
