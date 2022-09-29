---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/TuVzcKszaIwzUvbVbPv9-oa5mdwvopXHJwmBKYP94j8c2O0xSkH6AUZmLM3U40zgJjzJnjmQfCGig9DlZ5q22Qkw078IFU-f-F_ugv4LvHL4AomX0LYGaCFcF9b2CxKIxLfAooSt2iZExXECD42xSzY7wXOBqvVW40m9d8KU9j5ZAo9OxFOyqDEe)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/ZXMUcPaOAsuvD9k-AyiuvBuKKdhY3yD92wAO46Y58jQnK7BVF_iVAQDBC-_G_nj7m9GDX7-2nwCzh_c5qrccf4D9sfcuwyhdG_-voMJ9ZoEk0o2wqoPDBfxPW-SuYN9pUEVqyzEhO0h-aBVAjJ9q9--v1VJaC0Q2TxrdcDSMM6zhjsjPZK7UgoNl)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/GunEIQdMIs2Wkjo1FTm8ItFEpNozJAYvGmaBK9dLjGJUfJsd0oi5ETMlsbW3UyVK0Lk7j7EIaWPFDpd0p0CvIhqOiPouJ0c8Lyav__mPXPEvPAUS2Agb2SdAL164HzbuXr0LfxfyhSWLv_Fz6-y0clEAlygVzKzPsHEJi7hEXd4LC7L8mF5O32K6)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
