---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/hglR2WtkaeQXQGjeNvKHzUH_hf9fVWSK8I3B2p7BzY55hYvjIJ13_JaHnNGbrqHkRayAveQghN8LIPUuvwhvtfLdqXqdJ9z-J2OOHh4F1l583R_hYv88F9YUZ8S-Ybj3Ys3KbqgVa04kR4GItEhHYuQlQ3uiKXE4CXR330mDVGRhF-lZtj0Mn6ixv9Xs)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/01XMxVWGIhK5A7WXL5l4FRottSKAlQMKPNgnrgB2M_2Rw2IIOZ1wSlr8dSBl7DnMaRlgPdX9idR62e7I37W6UokITyIiUUfTG9o3za1F0Lvqqm9VoCifbN21qUsPPh_phirmp7xLAPqgw-S3bgMueOp0befX9Bht-cyQONXYAzv2BhjoFFlN6-bh-kka)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/zmWjmhL8qEs8UJPXFkidgpxwHkzhftVwHHMLwgJDiBNrg-wiwS8YFvdKW7kiQlx_9iAFkeeiYVHBL1SyfQHRDzRE2t5PzihQUMOeu3tTxfZ9Fjus-tjipp2I_0DlwoqVMyuVPOnpS-DZo7EC22RQkiZOI-OpDu1MHOP9j5ZvGUGQwk3RZTSrB3i6avLS)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
