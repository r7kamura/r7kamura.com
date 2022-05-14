---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Q_lrNX3Yp3fOC7fS1KdobzyR3DJVA7nCb-F9CeENK1yeDnLTkNR1K4yjuUiKU_YC-MR_fCt4R8szRKHG5uuf8X9seRQA1vEOhryOw0rWiwxmXRfcZfkIip9aUIFH6syOPcK8n1xRuVfYDqrm6A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/N8CSAjO1zP5rOBPEc4Ix4OgdCUfHvbsXMf6Q-n64YMYS_DpnmQa0Jr3trZwK1W4UA--z-tvq4URb5CJITRSsTeXCmW4e6jcfzx0HLGPWS9zUKO21hHgpbKBnZq_vBQS9fEgBVIVPJRMvok7RCw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/7obbzDt2YZLu-b_zcTX7epyyz_QTRCC6TOnly-RGu0AkDUEuR69b2LBiUEuJYl7VY7MYGmyI__QrI0d6gQ8P4MY-BGkE0o0PBbh2wQXhmaBA3So8YQ7KNltq_bYR_5PvnaSzx1NorUFrjChN1w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
