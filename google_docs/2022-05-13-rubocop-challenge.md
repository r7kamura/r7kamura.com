---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/d_9-ZZ759VoBVlHuXIMPZNljbFKyCmB10KCIlhj849e7N8dQvQDVbxE9wpmA4uZ7Yy7GhoZDK6NUkdaf4t8OLThDC13hY1Ja5QmWcHsoXBG3jYzpTXmRVQKRRpx69tFCjDFPIfvML1JEeApwZhUT08yfYRss8GfjBtL2uGbPUr3Wm2hTi3UfeEe2WdwZ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/QWWGjlygyXP2HHoAuEcHBrBwBBRM8NMJ43oypVlwvFbO1tSKqkmU45cdJkMTRhWcLkwbStjjqq47yF-JyhMKdpT6_GYMHhKwJ5zheFVVAhnih7W-kE8FPPT07-Yap746iwKAXnAxHGR98Na47aTcfudaqxxs0fICMcicAowL84eDhcqzzgbT11LSvA7O)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/i0g6YCi5nGgidqfp7n9E0F-etItaPyxc5fBmMRdfx0BuuNu1rDiH_pjjABWh6GtDHp_0h6L5Jbh7afsv9zIDC6_4A_cbS5Bfqr8TAdArdLc4Ky_K4_CndO3QYNnb-KQGunN6W_LHAjy5gGf_yXDMAy6C7CWpIRtW9grp315lXTVK4S5fi85ScvcGMV5J)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
