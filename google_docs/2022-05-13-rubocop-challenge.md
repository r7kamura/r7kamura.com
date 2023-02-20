---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/OODhERR9RpRB5g8OlkbyWfLakESd8kh8ytDk3fdg9BrBLm2rZyM1zD-fS1xWxn0JDBOxT7eAQMZL1z_2Y7wOk1lyb6NBSqderfQpQ2PzJdCLrvKdGryRVH3OKh_7Go5mAO6dhvnkgUwln-zXtoIidQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/iACpD5I18Nzjb0i21X8VEsik4AOiT-2e0S4oIRJw5GkXclzlMH3WGErvLo0w3Tn3YCCxswzW1qd-QcQLbEI60fhdQM27giuDLd0v6LL2-l5-m6JvoFm7gfZFg9hBauJ89Zvw1pUYkslDz94B2-Uf7Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/TtsDlIn7o3grMKqMbohxW2jx-KIxkuyGEUqznYDWAXLe9DiHsRoMGRuhAearOTJElGlugVV_52Ij1Ny3EEgNDXscPL6MAxD-9XKeuAfVl-MtPOk0_3Di6neCOMv9NUcmp0R3ryfwGDsIZsRKSU1w9Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
