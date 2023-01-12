---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/X1c9lwyCUGzMOUH6FqMOFETmxjmBVsU6rnD0nY4nIQNMhZ3ppiasTtcai4WBCUCAMS5tbtDUHlcDXpxrIZsZKoM1N4_u-VNyxkZNk0SGtSrXgBQwEDP4Vd4ARMn-u9eWXUmGIOYwC3xVf6Z4SMrkA8zGib_KQJTJAzGpSagA486LqtHKNKJpnUVpd9Ov)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Cm4QI5FPJ4-fSuPRzjjrU5IAALp8H4EiSHnB_FdXSrXP2sVQKWpO4OCcNxWwe2nlgLvIYcnuQ0_MMTPmvaBX-74qZAzr2d2QWd9dK_7_bRQgyP-XlARLp5m7-WIn4-4gi185UMfX54igomrbM5r2a6zaDErusyZlxo6wLGurCRmv5SleQrpUXLGQysOc)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/WE-7_XxM2mLIBLZXgYY9kHBZMhzdPrC0_DNqYv-ih1ordsUu5C1NNMPa4cVG4M98nF2F14iY2bXZBrfZgzVWwZ5phBstSo4RE8AeY0LITrYttYmL7Mpo8852JkrXEt5ZtQF21Jdj1E_rnXgJLUwRu1TiBc2mdU_2pioTTakEO3Yzs6LYGiMJDqHDp5t-)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
