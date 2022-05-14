---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/P8iCGAWS8HLBJWwufWzeIVA4Mu7XPNdbY4ud17JSEgMlM8NvXdb2k5MjX3vETI895g6YAW074JwWIa8FA_CojwLxmMBUykA6DCpRFQ6s4JJFXehaii6uwP7OmGuFratwnhSc-GS3olfLblB8lw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/SOucYtHjV1-D_Ql-FYCGiGXAM831wSDoP5STjluKw2O-D1HBoVxiPLaQIRPH9yVysyoJcVbp8HieqybLtYN6EzJBDG2vxtQrDPljDhoKmYdGc1Z73f05FSENCUypgfSgrMU4znNuvnCbw-PYjQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/25OJMtASEyEfAaypd3R7ZLwwoPsdYg2TvxWn01Ix_wwZ4ajE7yimAb5sBm2_oVCuazOU7IX1k_RLey-c6SOOAFP84yhhPI4NVvtpIrobaezgRaQZwKdzEeB1udydoyZy8ivyvt5jxXXvF3tmQg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
