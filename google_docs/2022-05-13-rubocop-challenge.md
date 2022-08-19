---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/r5UH2_DbhFoewvK4_q1boFYCYgx0aLaiGqFaOvqxIODbuIhvPW_IYHUAZ4bPcFu61M_0Jq5q7rUinpImhVnbxqWALNIg4E4BASlBO6j_dEZvjhM9V61yA07P7FYdhcKU-3wnyVkLpUmFxsHPZQ8pDA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/TLXEhomBk5iqB8QjIKXSF8L-Ues7kIOYtvibJ5EcGvk4Lhq1UtmmDwohNNGspN7IEjOimHfZiIsxcKBvYJOkX4KCI_gr8Riw7_cphmCKA-K4FX7JPUluLwKm2Iq9sWzmByAI7RcVYcKaKDTeP-WnWw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/b4NxESpRIfd9MhMemaLoctwF7BY2fPbbqRs-39p1MAwZmM8Buy_P448xuRU17ljqRQSLMerSbsRxGGhny5vV4oAwOlR3Js4yHmy4V337QLJsXfl6VE78CAmAV3bGUxvYT88fxMxH8zyd5t7jW8Tbsg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
