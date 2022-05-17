---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/QleV1-D5advEVqo6HDTtQi7PokDz2Z9qm76O_6rCjm3j3O-BhvwWSt16JOvmrxeP7i4W7xVqsroje0LMaFaEooUuXNjrK7KapWvEvFRyXvL45SI5yG3bZqh0_MNfVwTA-9E7uFCijqOIIgHsSg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/CDh2i_87dHpa1vk2ADCpXqxU_kJZVr1d2emY1Ki3Flc2qR5ZSAuMfDy5Nzkk3sf8pTp8QozVO0-hYMF9j20WaV8VaqxfYPolGXS6QdxV_XYKWtp2IFRAXMdKBtjAND9ueowo9JpPla-eB7-Vug)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/kbnvUMhXvYik72hy94SrKopDgF12Et0WFxQ6P-SIiG0xJ-e1KJGf3wKkZpenOg_k6nWIg56W6W0dBH9NEHvWTbmZH_hbgZqcvtrzgNKjJWdVFQVJHpav1rQqr2TSUbHHTMVVXzYrARQiTmrnuw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
