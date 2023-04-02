---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/GLOOO-7goN8GtTtXAXXSBnGG5_daRkiTNUGG4JqAQOeczbeP9JJUq3Kkee-9LaE3dRVXsMdbJFul8yMQDiw0JC0Wng7PpTI72M0I-G-kld4_kk4kfrMXGI1S7SU9c309Lmd9wHwOE4CvkACl56jQ_g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/0wwBJwGZ_-cEyczraHHcP02NPOpJtQ4mXg1oBcQ00uBAVpoL1rD7oxsFmcceFycJoK9Vw54Knpzn6g0j9N7_HpwFdrZHzJVfO7jvUBDNbGe-HNNKtGjt4soyIWcE4AaSsWXq3BnudYwN-H75n9tHHw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/VCAA9xPEO7M9NZXRrBvx7XNJWFPE99xZlrgx4Yw6v73E8mdHqNCpvecKxMLWE0wMPHjJ1QIc2na5d3F1uzUCI5OniSrgWxSXfilFwHuGEH3YBF0vLOtEUoMokgh2kl_-hFGvVMnV5bVLKcTbp0su-Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
