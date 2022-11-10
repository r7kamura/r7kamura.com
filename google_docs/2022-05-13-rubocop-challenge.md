---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/JTZntLHaqNINDYjzuQNzyi2wPM58mmg96qosqs7BKVdNj4tk4AGBCuhi51i8GrG5dqHfasXIZpDV4wgVNlx6Ac5TdHEV1LHyiZuAXD9Pw1vRKj2yGB4-DlpjiV8sC28agT8TH1c5qQr9OfLJEdvvmdHUAGdBJEBt1vdgHSnsJXTPUsz9jcfuB-AJb7qr)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Rw1ZI8qUg8nbBiM0qVs81xqAGzqrD3BtaUQsuWPNHwHamA8FrXT8m3PP25a02jvVHwmFnKgEJ7bycJEFTxBdqWk2Il9ExXg03fO4QAPznHvD00FIn3i7wdDax74CxSIhiRDu9I8fdQS9q1N_Dx_2dmq7PMcy-C6A34yJwSEpYoacGrNq5R8zYw-lj3rm)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/TnU2iwv0MYuShbMqZws1jy-SwJ7JCg5nHYDAzcFt4QFfTkCe3d3dWsHLnXUSdhiNjplboHdlgiT0xLLVTzgdCxkdQXfvYfGRKY-4leNXKf_zv2SdwqBPor4svV98WCTttM5s8iuESh86goT2uG-NoprQweN5DOnC2Df_SOY4lAOMtLaIUjdY5Fe2qpO7)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
