---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/3yfmEGjgPDk6YYqlYGFeRvlyh54N7SzOTwVlN0vFH3vt750E6ZZLhBU-J33SBnC4vbrMHFt2kUpWo5z9FB-oVISbVMlwBh1lezo0MN-M5VqSfzaDoBrjqUPEsC5CRMx7XUzDIrlesgSXdH4Z7ls4SDgTAmK9QOfXoGvHaBvG2ukGldsjq5omSILOMAq_)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/BhQKbEiBstmEIXdRSsYGTVs4o3jUiuElnQEGgTSqdFhMhauFgkLFiyO4TGgDANBUoOdismCe2oblyydrIEEz4AnIUHCsbn_f_FrWuipBVV1uKs-c6CqgkbmyeTNxT969xDBUdfwssYZPOcJVrAl08OfDsS8Ki8NVB1tOUNwF_opYg67alIGL-DxMR4vw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/lEaowzCPVDfq2iIOPZsBxMiWiT4LeO_stY145Np3Uu9vlO8yt5olMYJC0BM3QZ3axj0oaQRVZgF09lzTbuvSl-yMWjsmfaZYuhK2uHiUuJjPUeC-1przKqmHrjiNKpiq5hgR4RxBb9Rks99Gp-kpSz3H5g6MVTzAc98NjW71DrB9Lf2zZkoHljT_DzTo)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
