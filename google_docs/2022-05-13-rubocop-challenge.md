---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/BBqjiBOZyPJlgJYoPWOhkKLxwW3K0wXGoUQNtSBtcf5fNU4R3tPxC0UHw-furnl_YqqxNt_yZh6G8epJ74FI-V_OCxZPvH387nZpLVqH9cTVOawxWEeSdyH_e4qyq4KCcuu7disJ6O1M9JFyzg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Oehtd2H5STNUOp7JNKGNie3s_2ahaw7kHwtSLW0ozNqKNrJ8z3Kbn1WAMwjfHm70sdHTfXJQeb4Qs30P43A8CqCYlz36GBcW851ycmqVgR718NrviGTUKWPVMnv-jrQetTrfW8D1LsK3HhH7gA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/V2-n0_AYoaA093mE1DxSRxWtUfxxLG-IYGyHSHfxdWtxpXbMf2RqBIhAptfsD9B8_IvaggIySENaX4Y6P0c7hzPhep-NUTFz5CFac58_LFJPOrVDdW_ybHe7hWSLmHXe0hNsS7TfVNylKRkGqA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
