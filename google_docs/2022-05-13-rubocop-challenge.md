---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/ZTIt2UqZwxQ7EvcPkHTwuNI_6fgLoou0b4EnqDdISH4pXDiuSsl9k0Q5UDspbOXx_kwKar29IzAWtvMjg5Phvyzlclt8vwJ1e5Fmx2RtLE6SMMwdbmZOgnu39usqv5GKHBgzvJiFeLSFPmLKag)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/GG2p6ca4vKIHk2jzL6NppOysAuRGdtmOk0glgeByIqxnjqbOsA41yjKJVrxMM2d5Lm1Xve29Vds_L23oN-nhDx2MH9603FQNo9GFQqehCMHasgm3M7rhfq2izq3pUt3T2ZntOXriDaBWDKfsMw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/OOqXXuHOHVsjMHPQre0H2pD_N3Jc1RDYqTCrYsYZ7WK9nksD4LdWMgsMuQMOvPz6wvfpMrKG8L-8E4d3IjeF0kZFPDU42Qf8ldMoSfP3o2IwErPuoW_AWnAYYB7jhAFapB7QkzEl1MaADfeKgg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
