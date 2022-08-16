---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/K3-p7V0SOSfBH6G8UfbuHMhL5DnCexWIcICDiRL39VGT2WsCzdtvcKQiXSGgImo-dT_jL7EhSp81e1cI38jqCDkxrn5He1_zDe3mKjlFbEhRKEqi0M6eUlALNee8-KMCGrMPPaYydIXfep0Cien_KA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/5NKoErh83XgsJUyso9FdK2epxqmxEiiLsB1A8DRDbko871MLXpnOATQZ2hJn5ocCOc-fwnlt7rnYT_f2eH9e6X2OR-Atw00NXntXAlxlc2SHAejftTL-9qUiJmF90eReoPTMPq-k2mUXGG2CN8DJWw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/AJDZnaMbMdeQwWSGq2zYOpeZqPBEEysutPENw0TjA3UtclU7SJ68B5MiHM6lt2GW3_IuEznWCqRohcgqTO96n9xmgdViBF9n1CTvWDli6kwVj0bHeGCgdIiK7ZfxTmWHNQup7zSpBZGrMFfpIOPfYA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
