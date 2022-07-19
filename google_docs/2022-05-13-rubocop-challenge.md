---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/tF5j-YqM7CNMIyEY1uajbtwLzXhRpYsPRTuxCSx3s9J3D_-t4wTPQPFlEnR31QZBjsP3M5yLRTPcS5fnZ8w9A45jXgE6LxczwdpUZeUJ1NiMuXI3WjTR9SHCUYULhzWpZFOdBWQ0SNoFgoaSv6pN2g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/sEqZ86qudWhIVyylYs88a2me1wotxQA1Ndrx5P0RvFlv0ePWYn8LB4M_iL6nzZyYJnNV4WuSCA5uRGb5n23S7W09aMtFRDq1Zn8rsgJZj9fGDiCFym8HXpzbL-NeZ32k5j0vVyAZ0s0LzaVsxWBKFg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/K49WnRqB2x06ISejgGB6I03BTpGnjLCXyhIX9PwzLcY7Cc6UV47R8XQBEM9-ULbbmR2f8QK7pnq4M2J9ZNHbKX7rjqWDvykm3UpB-V2t7PhMgWIz5gsb1WeChJXDIPQSrD5cgaGlw--bhCE-1sPIiQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
