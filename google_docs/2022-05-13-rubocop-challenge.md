---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8YtWdxe7KM1Nz51OZ9cXexTEsjBqNaQ8OgSU92sYLKKbxW-aDwgwD8mThNbQNh8N4qsPMk6soDnYDywcgR_UfixnvoIIDPNVQPWiJoUGdnM0Y_Dv-7G4rFQrmQgwTLbBPsqiUZolof52SyiCcQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Iw1udegBQRWIcoarhQt9aHCrrX0Zf0ievzl5NKDgla5wqDImBTBpG6lIMt1DHS6JkDU3mJkv0exHTEP3hor6obAjmpEXolxctU03p3djLPvg6WZieJglCISUunkwjuy4RSB-uiLjxWb_eXS37A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/nsOfxdgm99CsPJAKfFx5pbSUPu97nXqRHaXA5whBrfJIc14FUHu417-0qCeKciSV-ZoJCcaCZ1SSMpTytnXRFwXp1w6VN0WNzeGcAAqgNDJKLQrkxMGYaZjgWcteoTx6_R5lrjPzGFnlnHIa-g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
