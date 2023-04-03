---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/YbTwIBe5a6vtDDPt4FYhY0M05zQBH6g-811So7gmPlz7FKw5wm5g7qjxi1Bgt9m7hmoVehSeuljdfLsd-Q2ThYifF9L3vJtZE3vrYOSmZN0wdtA-5lC_jfVTgv-THNZSdzJTaFzeBUHxMUQCbTnj-Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/YFFp8XmCyj9AnsoneeoQrLrnUo2dWFQXbmWgvQC09yibJhmdHdm6Fdx_dYB3K_euTGJKa8W05YrrcAZ88XioO7XycMtpb9V1mcntdRS2C2YDameBy9LaAdLLvZfDkYyLPBDZYvLow9fmHt-qS6241Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/9M89mz5HU5iAuu0dhfawMxALqJafwVe96OwIxLizyl3wsnjeamhPIg20bmBEUkzZsczUZtqzHC1uZ54Lcw8bvHeN-Aqkzm3tK2r72vm_Kvf0FYU1hCoI0Ov5q8hkZReRKWIC06kCaPBPLpWVDal1EQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
