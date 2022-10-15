---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/TdYOcvys958KoyfGXfXoDrGcDy47L4BEmTsFMJ26iyl8VSNXskbjYD26LwMeNSIYPHMCFReHLyyK-rp93kmCUSAEQCMn-ndl6fN9_gi9bJmHrMOOyGUQoBj6PBCc8RgN2zfwHmQQLEMFV_DNwEsQsgTZVpYppIBZRqsqgePoPx5B01wScJs5An50)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/yh0jbxUykZcW_pFmzeu07s9i0_-J18ZFvLw1cjNPeDgPHvmHhnJZCv_-1fN7gyzNfhA8kaSXEMijBj_OTQEFopvt3scxrbHaO6xz3QAcAcdXiPtzggH3SqWG6N0viyumAkkguOcqBU9RWTDijB94HsetRnd4j6YdQ_UQvAGOr4PlbCPSixeWwbgD)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/JFFpvy4mRzK2806IHcbVvmVMmCqUwSBPnT6V7HyREq9KN1x5My39gj50O8QIrhSZDCPbwCg6TPM6kOLCfz21JJ_YglKk_AfH2RdUVu9GE_o0ohwvd8EE2K5XpplHVys7VROyqF3iUnOGWRW3pQ7N_Q1CpJgIcxwaFzkiIQ5s0yw1rJVxyJD6OuWh)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
