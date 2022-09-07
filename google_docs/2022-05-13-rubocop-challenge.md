---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/37gXbhAv9t8BcNaW3opAc3ICpfZu4PrLNNIOf5Q2cKRdvHn8bvIJzXY5g29TF0o2f-vF90f4NPNNh_v-ud4wyHub8vrnAM0mjjWdJr146v-0P4vZ1wG_ngZPj_Gx54UlTPQ2bmMwd0JloYrw0CIYDUBzfJvfJC1Q-BFLOIiVNOELodQ_4NNXQryu)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ksvp-MVmoyY4yJAInBSVo467uSqRwfZg24vpOr5_WWp8MY7OU49-i-2wqVmiSEtFHcRzPcEpSZ4ne7d0uarZAqqPeIdDBC-RFA_jk96-jX86Q6cZjVzsiCsCtlv91SmDJlIRqJZgXG0RoLJvQgqCUHCW_8MQSf52Tcyw4djNaZVbufjbXN-imMoW)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/7bwtx_bKVbgwo34_yqmX4FvOjj0YYQCtsUXb92ZQw-Fcz7EfaRoXem-hiVZtZBybWIRApW4qlRcTq-NrTJEpfQqMtZkM-5oGocOUtqyr3Jr-DpWdKdkoOUfUFLheaaftHMg_NFbYN0ynk99V5NGKsQDIuEHyTQgVUt5ToLCURefRx914q2iQQ3wp)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
