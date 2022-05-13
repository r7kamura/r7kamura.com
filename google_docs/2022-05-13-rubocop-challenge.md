---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/a84VkNoYEFvBgpkP28ohr0HBbg2jA8Q2lLcLO9TzHWNhhSeTpOp8eWKnLpJhAyZpG4DIDxcZjVF88Vuw_OxHyWpwS9VFZ-dy8kQ_h1_0PKsfLE5MTpm0xy3fcwiYHbm4YJkSoxRh8YCb4EEKXQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Xu9HWpTe8NlecEnBnJy23KhGk8Qvk1bcV1ZgW0k9RqPaA_58HIUUqZot-uAbAYB6JpU3H9Rzrv6rSoky3WNvwTyCdG7xAt1jj4SKxGeQfi97hIO-fIOfCrRVMslqrQ8FJ1ibsYE3cMzbIU_JLQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/-vyBClHEGaXUylMHX1RA2p8GUC8TLXVLaq10B9w7A7wG82voY_JSVJwZJfkQghp4I2MH28Ywt_O91322_5kvcrm3gVF4QZx4ZHBhBek1chAjkURnGjQ4wT5tYmgLFJS1RZPclBY4y5d02mamzQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
