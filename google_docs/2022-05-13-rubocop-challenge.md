---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/4CmByxfCl8WsRPdMl4VEbUUDyfzwUlPcxMLB3YF7xpZgeQIQLhgFyFigjNtEaxmzW7PMeHUlXTYy4b23O7PehYdgal02XxmgzV0KnCsiDiuSYJkyW3XTp0iOXn8LPRrJOeVHSAe-EcolH9hjRg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/jHymmE3L7ERatwsnoDJY2-SnqJzBY3QIwFVEx-e8fZ76-Hyiv6679b5iW3LKzsgsf0wCrctF1SLpbU6ISelcfBkLFLMkoA9o6d_HHf7zXdSGvTYKR5uV3XwJpFk2qqE_l7Lmc2duckKOrqPxhw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/rGMzvVPsTHFMMpfEdbfaB64WXXs3L-7q33ENBEoCD6-hC6_PURctiEtOiottSM-c5rbuCeD6gokjLBfYf9DXB675GFyUuqJTe4h1vm4e6aIU9fGZjN1o6se9k--UM-8xC418drBCsO7Q-d-zvA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
