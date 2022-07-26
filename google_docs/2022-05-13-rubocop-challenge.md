---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/2Yvhn5fcDEe7Twunrrg9lRUUdecL83t3TWpEOOng9pB5hFBG5quVwiyICSCKroH6kpGDd-RmV_x9x88Fl-Gq0foOZKD1-b7wyAcwiLlJ45_ybXCql0IpO_bG8LhG57EPPQck13no9v7gX86JXA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/fFmhKD-D4ghc_EUm31eclaGw1WpCT5vO3Vv69xAimGfnpz_nolnu3m4zO_wfmkKOhk-Gd84SvJu86BIXT-Q2hmvwV4SqyP4ExwhRfG4AfV_Onrco1w_LQSN7Hmvbk01EpL4Uqqke1m7rwuqJ8g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/0bPc-3zGhvpxLrhdxH7cL9Mget94pMLFX9cZhksq8VWCLoAsDxT_1pmb1JSBG_7l2uzU347NNJKBOME5Te-y76lBLyRmOsJlwVEEv5bK2CAQUSp7pClKtbb3oDfk6XxonJrUkh1rMUVnoQQZWQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
