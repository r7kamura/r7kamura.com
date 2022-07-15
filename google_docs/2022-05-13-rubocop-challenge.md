---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/gSg1wFT8L1PoI8DAMTHvyBYrGPwWuylhShbbatTPDixLgj720qGwxUpdPjP7_KMc8Y_YzaOE3n3I5aN1uldXQOkjCvYYVbOYuyX8fpO4BvoMVblqEgdKeCxBe7b5clLzeSwFVn595DT9SxGF4A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/eGiLU0PZOn1B4s6YV9y5yaltJSv3nQJPJvA9VVexX0I-gN5k9sfULNBHaf2K7I1vCUuD8KgkqcKgsYjKAlQInSrpc4mxs-ILi5JvZ7iCoQcqLzkG2xvaM09Apfv9AH2EP-s0KbB1LVCqhccLcw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/sLvlefvqqh67xTUblPEZ3xj8_yIkCZO-RXKfkn0SFYJ8PREa_W57IrcQq4WWmZA3MnlmxohlgOc8JJsMYUWPuPjXsFSC7iaWtyH3UUCrEo9dB7oJtRnflN0gNkOfpRFzNSW5OY62Mp28dYftgQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
