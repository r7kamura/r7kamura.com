---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/LkC6BOIthzdjulUDoKDFUo6jW-nWDC0VX1mTQwoOLrWCNOPMlYVPa_b9DrA3lspxQnlmqtPQao3d9yPhXEzR1vo2KB37wXG6umLMRDJtcPJsb6yi8k1gRVG3Kas2Gxr9nQDBgVCCdgn2_J1u6A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/7qSEHD89FC-RuqvQ8HlITNx5dCEYNkbGsjbO3qQ5kUfrgGOt3ACLhi_5fyFxzGbZLJvy5aIcisavh5Dz-MgP-hpb4ELlRzCRQQFtnMvCz9mahBFdnVXV8VVviSApJHpVsXRme5AMq1UAotnQiA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/fW3BwizUduPZLWV7sYSA1l_nUtk-albIGH493deivz9Riny_d73NpK9-uSX5aVYkYIqVmgkOqdphCtlQSWyV4mWXUJ1PtLv_LkEskj9lwD9eurD63zncS5kN_ukfo7OQgxAUyIrDtmACUmRwMg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
