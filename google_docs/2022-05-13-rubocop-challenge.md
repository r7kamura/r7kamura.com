---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/bbbXn5sxCto8iWKvoBxuHeHP6cQdDkNngLzVH1c0XRTiqXDVuInFA_StaffXCdke1SRSQzqIf4Eui2zcStFrWnT4-PnuB1BhCBtzWlPuGhKbCcX9GQCB5ZegPt4BED_RcSxdtbwjIxi694oSu4qOMg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/BoWqL30tuYE9BtHsBt-fzrK-79kfklDUVpbGdTCCAxsGG4x1MigZ-HmarttLS0vovTED9WbENtxG1XY4oyiNsaPcoM95sxIHokOHfzvGjQ3hNUTxLW-4su5fbXcGMT6LQVl0plc_EsX6qCfn_oB8fA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/CXckoSXYgEQqO481wOq1ea494kDjo0GCkN0YajFOZEtRwNiaaK6eiIMLbMVWmCYXU8lH-ZHqOnHNUHo3N8dq8kEqn825b6aQpg1OLmmhAkgjMhKmNmMq4cc3ypv09iNPwXrhcvoD5lu0U5Tp2GFEyQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
