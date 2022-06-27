---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/FlwBgQ8fX7QpuKe-n2Pl73yE07p1iqpAsMhiqta0XP3h55ufBTaTxbBZbXsSk1yXbFSsMqnAqRwdQEeQSuyfpeOo13HAf0bLGMMojLisnZt8j5cdAXohquwzHDWLJGEbgY4_nBOx3D5ifqMaSA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/PYVRKLOEGFGPX-kKoS_yBnuB9QqUBis0IoJdnIELmITkmniXoGGt9mMaAbr5roI-C0BTh4PBjcrZT-8VpCN7M8eMwLmCaVV43HTp33XqcO3Z9rU0YLKxmCItlxISpMM59vfTHS3DVKJCCxVMSw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ViGsyizb0MxdMkQUNjV4KlWgSPR2SEsPrWqLPuPhmAa_W5rsnxfnQ09fLxuX0wqycH90pL5vaio7A-eHCD4YIn7vA2AWu9bgaQ4mCIVpuDEF3iQGySLyYpCKZdOnTE_RCKsY985wHAmPITwfwQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
