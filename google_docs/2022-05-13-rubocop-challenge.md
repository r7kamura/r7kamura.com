---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/C_XT1opIovMnyIoSN0GnHdHo3h9cpXrJPtLy8sVW16C8uh1Ba9ggb6b9y4l8p6fhjpEh9j_P4xu8iQKZjQEOPVHkxflTjqfy69oyoiRJz0lCaujbMX0MIcWvE4YauR0x4SbIbE-4viIatIRUNQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/GYdukSnIosx9g9FiUMmGIaBnrvt6JpFom5XjWZzroBewJkpFG6NUgSXnBUC8lLhGxo8bFFMHACefNyhqHw1C3f8_mjzO3XfXS1b_hgg2AAS-bptbgmSuLspkXv8cegKRbkReFKtNeVcpewNxPQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/VaGjXJgpp531D4VZh5hoOny7AGF2yYLntDQuDVS36sZPwkNtq_ndFRVI1mhFNezPGsFkBJiCh1GuQ9qB7Ix6P3_oPQ4uvhtpaP32q-K3gliAh5ppR2Qyb9aMN9auLCbc7fid6-v5_Lwj7YcHLQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
