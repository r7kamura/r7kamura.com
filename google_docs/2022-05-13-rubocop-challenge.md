---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/d1FjRq09tdB8y1EGOyoq9RtLf202HjbA_ANm8dcFXvhjnkW0xw-8h8pWWzy7JeCDL5Z6vFJkl_kJaL-XFAAhnBbyS3dY0ysbB5nqs3RdzcFUV5ip5IxRcvv__biHhK0CxR487TGB0Bj8MgH7VYqQPQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/sFB6tW2dEmJQ-1otZBz3fzShnspY8oGb1nNmIhqeaRoK2JKxqp7EsvfgjhL65d5ArShORYNw0blwyqSPc6hQdBhM5fwp0Idfx98HDoS4MSADnR0KBB53xuCPm18SeKzMdyEXaTVpv2UT2_RCr-1KVA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/bymXkfoRfTHqSv7hA7O56MeDVz_1XDMNSmSdYv7CIDZFrfxqRRKe1GBi0NP3oFxtMcSkck9Iv3mXSEGrZow4OefOez2teJI-fsgtjk0T2GN5Sfq-_mOGsKe_2JXf9ymZB9uMCXVxgsvaioMtO5531g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
