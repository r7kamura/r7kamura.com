---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/6lYW8jjDpSPAcY--9St0FuIP-AntU3IbJN93ubgoufLFc6QAhmt_fqaCS5KaHc5ZVEFg8fhNkIeVYW9sn3ixZC1x_-Z6QuNlS9Fa3WJWcluj_mMhr_CpR1h5Rnf0VB_5hqW25GK3vrO6hOM1KcBwGXEAgPuGtJ2q3GTyQrCxvUhcNTaRj39DzO36pV-E)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/bCawnMo3omlSD88CgYzDtiTUl7n8LmdpICAIOLZnm6Dm4UonRewOQFHtudLxZWWg7uDscGsBMaw8geHvCHHxQMgdkOdtPKpmDRi5PCuZXLGFHMrMtebMdJbi_etS0J_SJ5y0pdXq5XGXHXSDitfpwkCOCzJ9aQpwZclQhLROhPti4x2oXfzpVpQ10LGE)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/OBdWzenlfzOcZhCDIm2-7Ls5kzKsnn0ocBB00PIURJPiilkOj02wdG8qbfdAxcPoe_qKetFvdxzxPtFZ_MbcVrfFVUW-KdwM0x34fW_NujnXK7JPffUeudnt4uCsh_tXzUcjPPodv7IliLO83JmeEtVkoTKEl8280jKOGVfU9URNoOpQ-RFZVT-lPh55)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
