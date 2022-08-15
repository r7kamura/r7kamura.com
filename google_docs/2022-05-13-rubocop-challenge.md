---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/SV5GksmTEy6z7niwkAWHqLcIckejN3nxk7KZN8aRODmnejPUl4wV5Qd2hKXVw2X0t7OngW3eN3wcL0GwVv995NvnJga9x2fKH4mQqd_a_EFwnirujAnRRA32fkOS9sppzuaQQMa11Nxbjx1prtxEcQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/SRxVI0PC4cIl7eYmxgaoZzkwqMrvtxxbrst1XO-KuNUrCTlVm71NbCEiSZax8VFS0fsC0wv7ds2m084EF25RFtpxlA0LzhWP3geLs_Qv_YnVM8_BXT7Ly-gULJjysJ79j3NjQ8kh3ld_ZX37K5CqwQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/u3FtKuttcF9PGT0o-FC0K6vNSTTGfBYzvDhu4Iqqim6h60FL5Sh4OCV-RgIlyzIoI3miX5D7SI_SzATpQHqypBs7VQi7UzceuT1ZIaoMm20pd-0mjqHH7u8VLrvq5bhkStdi_xPx7LhOjj-ThsW1Vg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
