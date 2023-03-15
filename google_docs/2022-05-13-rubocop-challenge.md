---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/6d7iYdT5VC5IUoITA46WADb5FCJMFO-JogOown65jfb4cqE4W1S2X6NBOKXNRr0MzBWSFn10r3nrIk6jmcYmcNfRgRswtuAgSpAa1yiynsvF8TdPWwq2U_9BECFBXdvoQgwO5JhcVKRKtL_jpCmHYQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/7Ey5YOculzLAig5AlMNhqwF56bqJmEyf3jePre-pVm1svMl5k252Yes4JDjdp7HGnEgYoSge8mAS2Hu1iK4FT4Rcn33j8Nb5K-2UCJzXoVtd5h2AgB8EPBEE_lX_vo3F8iHr0jcXScEvbP2WBXvTfQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/MPOfW6C-_34flECTfuo5Bw71OF0feHeYsi6AVpSnHI6G1f1VowLmq9VqLSuaehobG_HkIJA0OEp9OMB3feCHVa-EqsNTOOcw-X6PxwyPrqgnoNgz5gJuO0Rsrj7VVf_Hxd2FS41ESVmGGPfwNcdCuw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
