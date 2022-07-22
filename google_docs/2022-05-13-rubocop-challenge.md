---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/emzC69HW2aQBqDP1aM6B524SJNvxUpYe6Ue1Qb__pXIQZq-H3ddSNqZ3BWg_DFtlP0aN-FlJTPpd2HUjBXfqj2FYCuBvxYMujH10ccxxv6d7_uuR-ElCn4kXV63INCKS9c76LC9CusbMYRjuUOXJbA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/dN2Ak5EHFqFo0gzopQ-XCui1i__JEh8GKRFfO5pMxmuVZHrhhlcMPy4w0yXFnhwQJQx1mP8x6nXL-rPWj_B3pECAhQxH5kv86BfuEMizMBt92utwj_Fr8a5I4c2rLVnghY1em-V0KCKrmmWalhyYbQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/xcaEW34f6S6pxd20G7crCChVAzKY2d0lCoqv3XW6bna_v5Va3xcLYaq3HRSBuU2Rwb8yQPl7uuHFU3wppTuGxifoepBDplBf6wSg_Jgg8xv6BWsgjLiyleINmCC_KOIn_u-Nj4aDMQsIs2CDqrbXxw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
