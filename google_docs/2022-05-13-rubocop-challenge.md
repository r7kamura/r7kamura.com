---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/Y9K4D4o25BOrtgHV60BtAn-SuheTlBM_L7SiNRaE5BdpGNqGr5sWH55DU4Fm0kVJocKCaKRdf9scxEF5iJgOgHTs0VWSyO39fb-Iq8hUhezyob-D5m2kHnrE2RVIWzL8Tha8UcIoOF82vOeO4boFaQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/SGo5rnBAIXJGgoi6_x956OvgesW8ILxwuQbSx-a8BKtAiHtD52cJNNoJgCUQ_JOWeJQvRGk57h6GgxrMzUBeDkCCU98WhVsTCY_y1kR738J3hMsp4ykZaKMQsnRJUmSFK4hJn3ZsPj4ZxKjyEIb7bA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/GOu3ofP2ngaJVJPkKzH_m9ox5J8_QAXpdQgRe_yi514ZEfjF9gDkSvqTXQh3SQJyFQTcRAuemOsGu4tKAmJva028uacph5oIWcAlgVQc3GVFVdPlkZIbn4aeTsEWU17XV4twnDE_f_-sBYG7uaOW3w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
