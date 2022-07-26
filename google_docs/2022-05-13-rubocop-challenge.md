---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/uy5gO-z0Jn8E-UjbHYxMmv2iiORC4DD6mJuAlJLyR5UjobhQfbzcis9LVQyHoLvFhlmzBsrrSTkZlQug7x9Bg553nl21R3dDdCRmxznORxoMaaj2h6888tF1zVFz8-WWqBdZwg_ME1HDM2fqrqhHzg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/QqIwv-SkC3qbJyVWYxuZx5AeZVIR1wKdk2stImr-G0tsNT0qxABRYCQ8nvWD_GOPWYdRJbeiwFku_5ZWyd1ERhoxdug9YNSbbgEWL04sXh89gx6w8PnjztQm44RNa0n6xYL-rTIwSFpYmCdXCT3MrA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/i8WMG_gkr1R_GyMLExHYs7pyHZFgo0uANpM8qAdchlN8VK_IQ9Bx-DyIdYuTafzu3u5iTno6BaVK-Y3h8aQMtsJxSyj_FQp8vusAlDj3mr6WJ4BKRkBnzxE2GsAFf4xZcPZnaMCAXbP4Qt2mMQvgjw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
