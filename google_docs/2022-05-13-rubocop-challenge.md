---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/HCbGGh1-UEc4fuE_jk-1TSYB_gWyTwdft8c6Nu3N-uUYLY7FM9c2_oSrrmHC8DTvBOjDen6y_Q8IvtiOvqlGm3uZJfZ2SafHEvogdi6K1J8Pk9-3ORjm-6fkWTiOLFoi3wIiHHVfVq3wjPEmFmRyeBB5kynXmfcv3ajwu8Z7d7tYHSzluUVCuTaVtNIj)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/Sqo4J7hwnD7rEyR8gOCcDqCQX4ttEI_daIPZpcNOBkJ0jp2fNTbtxRa_Z9ieGyoCt97RQSyh6mVlrboW1672wvGqsPgFwfdiw40stVfa7mW1o5eDuJmIpabA6lAj1alAc2nHV5-GYq4aAHpUNGMWC8Fzfc-ptZsfqF1Fs-yOb80DcCNvb343rgMxrkDR)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/8hATxPtU9TEcoRPHnkKth7hmacEYu2RHp7ORXxH8lDSj6mnF4rMowcbE0Sr1tP_gnKV6x5vrwzHjcR__5HwbHmr_3n-x6VqYbkqWfrjdjX49RawxmPejeXoGy6u4qt6NGcItDDu517APwA2jStTwXY8QthHvQtymkX-nvGX0-rxLA-9CAka2eJv4sLsI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
