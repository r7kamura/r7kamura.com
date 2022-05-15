---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/X6_qoS7Xi0_aphKaCzFIt7_RC-34Gkgp7zRYDKFceEm2kmwR-G8O1Rgn5Ye8m361J5jKyhI4bcP7mBIy3XSdaE3biQkJm28W5W0Bdzspv-dSdzaNe56Z7JLtwfrFw93UVOHBxUU3Znk1VtpQNA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Qj_9h8TRm-E8OnhRkbNHGiVUWUg9vZy3W3lBzGENyaLFACokN98EFEKfIjIlb8gPWmzXDv4kbXJ0BBu4cxi992QLvzI2rA8jqoNwTw3VMGRPVs80K5j_suBDoDfgqyE9wJiVXUOV2au4y4C0lg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jW9NqzXxWUoQgNxJiEfABvye9tE6_WhbydbXnfqRPaiTZkMf0P0h7RTk8o2ZjrFjM8ikGSxM7zdYuAO83my7KOV0QvWBM_iJGKyf6HVMNFI4CgOhiDw6Jv76fmmUoFpzkJz9C0fdYQu8c4_Z7g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
