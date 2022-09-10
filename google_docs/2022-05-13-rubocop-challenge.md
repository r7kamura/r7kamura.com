---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/oQe0G6wM6_womb2SLDnAY7rmb1bLHoQbDW6AP6Wdmc8ToP8xc3IleNpD85paChNf9kcwQPAlcTQ_3GQ9JyM382fYCwy-ViV4JCsJ_quOIN62Qa5uC7q0OzRGEKu8dtKzz1oM-SX0MWWkq8TblGrR-pPrCoa71_IIk8fCQb45T1XV5zDe7nHIx2vc)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/f5gZYUUCoH-6G_O_l-ML-Nt-Jz89Iu58DvCnZUi31RKyRZpAzU-XdLoANAruLWEGNprFAnRK_VJFiO5IaLbCUIjUspZcnouXmnMhRhFij5vBvVkox3X5BGWofFkKDKDIANxFLOkxRKbitt-iNkHZFbm9FH95AowZjTuYAodcV1w7rpHAqZirLtFn)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/qexZTXGbSJ3VidN7ee-5e-QQb1l-9K6n2niDKdJ3bogsLmHu60RRylYQC6nrgkvU2vDWP_t6fHFTGwsSBEpr3oHvH9hQc82atn_W6kgSmJh6isUtVH39pwSKfp_bP5isl9SFCgzrsb0n6_DnB0C-VGZpl60-Nz2RMrOMlKGJ7zoOzKvIyeTbJBvm)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
