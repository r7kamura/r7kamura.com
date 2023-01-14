---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/9PNhhHjz9HtxvXqtn3NexqkIGUMRbrGJ60wMOh51p_nbmmz2PZXHpQJyAg-AN_WaH2KqJWmZYPwoDB6tYoFnQa_hutl0mnMb4zWnCat6rOsRTZfotyLijIzorTtrkv9Ncpad3u-6utDV7fEaPGKAsNRnYRKs2dqdKvsCM_XYoEz_U9FKx8Yb9i0duTFs)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Gxk35knbJ52D36Uit5D-p-gGgmfyb9LTv_ZkYpXqqYX1rC6BXsjrGqyFJkpzdAQywJlwvjHYC_i5Mmj1p5JHJ4juOyZPL0eFOROUg2rgGJQwjjg7_PbgF07xs7yoD8rtU9mYYzgXg8HICD_7PcMfBn-loI-Dc-joPC24LlaXAz3kCaWb8YNNnYkZQLS-)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/akUrfsULW1Frnd_hyUylvTpBpUEmop53iX6tGOo68GU0r2KRe5OLvtm-goWztyRyxyfz9EqdKc8eH1upPhUIY0bkP1pprrJKLyr4DcYDjFbiLzzswkcfX0UFeBTJmAuuyInj7fv_Z7wLALqUOmKHn8aMPdpoXU1lAStOHg9ghSPGckxcXrTxdu-MUQ2Y)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
