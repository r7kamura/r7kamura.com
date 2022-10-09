---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/sUehBsOe-ACHjk8yU7VRBgfFpvBVwRUXPAbLI4lsW1DNX85z3ZKXvaIjHWr505yDSpmm-t1w4BCQk-qHDJwkUPYsg651-n8NGsNfzGur71mTdTULfx25kB-Vkx2b8TQAXHQDZmthY8y090BjUitFNXaeTj2zav5685VEC3gEw3N-7D-7BxMDSiQ_)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/HFp-PghTlXfJ221TSGVVbODilg_iuklfqWSEf9EGNmqhnIA3WjnenAvdLwvYcBg-Z6ku6NzXXdA7H7jaYAASBu0j539x6yygMuk6Nz69FjgAP9U_BgVDF0SIZzckqwyBCfL1IiLWs8rpr3DlklhokWCxSFV6WLxATg12evobRY43R6zC5DSwQSf1)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/QSqEjEYFt1bwuwTf27JBWho0UiBgq4mPzwETb7sxMyWKSC3kCxKFURsB80-DZjColY8z4lbw8bMEeNOVYehdC3U8mygHxm4MBTMmdvUN5bS7uEQFJI2k-LPiajyoURhhzFtcId0ihkNb5lCeWrvE51HLMJ_fO92Jds4s36Ctth1fy-4mETRwAPQO)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
