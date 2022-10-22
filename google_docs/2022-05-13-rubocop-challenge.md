---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/2VVIi26R5Ry9qCXDvnIR7bw_O__7W44OY4_jZQohanvkC90evOIuRT5EuamON52xyGFjYOK3tv6qBip1tZs8c6emBpfAP1z2-r35IzsJ_zSHj6KncMGoIijWqYuraM1AuJmSCIuzSDec_VbNhvikMHJvfSf61JVanS9nIRr0rZD9pqpAkkGeQMp8)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/3bIhVr4vKAOi6kC8NaRNvYb5fh-t8O18GIP6QxK0A_FCwZXquE2Mc340RY9aT9BNeYS-Db_r-Fc5nU0lJFMnBvltAUzFdkEniyVdO8R6UlTHg0SRT1FrEtNY5cWGrqeWjjwAtffoA4LRdMf5NYKOkl4cCq-5F9TgYgp-O0ASRvZW0q7vxHhu4yLw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Qj3od5AEWK-A5pt4Ev23IhcCDmUB4mRoycl-f1jL4UkIHpKE5RPehWjLOFdAptAYs5cj5GytVAoUcWYjz6Mq3wEgE2_GEVjr4V2sMXDZsGpOd4vv6zVYYN3SRl7QR8RWm_5a15ZrQ7EdPoWFAHpUCUHHGNXI2ouL_MjpDn-ISQ42p-DcLxulrRC8)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
