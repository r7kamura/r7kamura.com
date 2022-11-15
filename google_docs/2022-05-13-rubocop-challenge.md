---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/ruGfvXk8XpIOmoCbZcNuJHxXBGEnY7KZT6DHWSvSNnz3r1xdeoh6t_Cqkbz6sRzL27xWaKpsZwcAJLOldqW1H44stL8-4LKAr5nYmW_UqnUmWEPgHPdx4O04EcMT4umi0mIqWSpfcAtT9oXBGggcMlAwnOmBCQfsdGBPKU2Pvl5aH19z2H4gpOdF2cD3)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/a9LeKgeDaTVbspokHknQ61coOtpg27SGWEFneivzyve2AordfHsOVz456L5LAdebqwoa0i9g5yezl75CfB0Cs-5xoaKF6FD0uc5afDEc7nJm1bS8ZlbV-ofEfMGonIU5AhQ_6ak6HWOh_KXJ1VkfkHK_VByLCTiQocaIEODg_UODcp-jPlpkwMbSVuqo)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/vyWzO5daNXNlZfVjJl4Vs0ARm292FglfUW325-6qSQhnIcjAlwmHcJ-8g1yOBCsHgNqQsuzgMCsQRlmpxEHnIk2oOgbFM2CII3zmeX0lXF6eyCgESHPp6O0Tx-dgj_W_jbTuHihafZIhumQILLjFym6Mhsahvgwlu1uNfU-CT3Jfl3EaHGbha0og3jcW)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
