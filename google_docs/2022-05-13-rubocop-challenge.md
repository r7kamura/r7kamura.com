---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/RFLcs7b8T38mid2EPtz9xgVbe1-aVnMXAHoqBb3R2Qm57Fi6KxkZAKvVQwwSQ7qy1gp5YSpfiDk8uMbC_i3cEV41S8Fw16Mc4ZPKx9DxHZ7mysEIQSPMOExnDEAVecxRlZZ1rkbK4NIvXRnJgQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/8dgvmm9TEoGXw39q4jDMTYarvBN4sgPa8No5qMgt-gQfymu-x-_z1v3L3oOwuXLIR_CI7J0ckC5x4vF5Clb0q_WRB3CsOwlYEgY0a9v1DB93qgFuU_QJtMr23obuKDLsvcvhXaWqdOcASzcNcg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/I6rHVHOnnGzsUqW0AsbvTe4JhPdgmsTIyxuKPc40flHXFM8-SqjsUrawElDN_JgB5aQ1Nc52uuse_v2Un2EW_hygIx8jihajykXfAclqpKG0NRR-tI6YI60NkBvu0onqmENgmUw5araTypDCgw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
