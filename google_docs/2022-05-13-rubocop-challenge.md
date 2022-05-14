---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Q_lrNX3Yp3fOC7fS1KdobzyR3DJVA7nCb-F9CeENK1yeDnLTkNR1K4yjuUiKU_YC-MR_fCt4R8szRKHG5uuf8X9seRQA1vEOhryOw0rWiwxmXRfcZfkIip9aUIFH6syOPcK8n1xRuVfYDqrm6A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/4cR4UqBpb7RuRlq6TugqYaPIKM4pd-12ab-ppbp9JvXl4hM5xEYZEQZf0iVkdTs2vVKn0Y4C55LLXOPcplo2_Bs5sna3PgiPWCOwi9l7TT7gJAb67VlN9lZ9ZTPWcZbUVd8PVq6uTASfHNt7jg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/H42uA9hXn7s8EVmHAUdBQHeMTz44ZW42c9gZ_JLYkXHZ7DrsIl8TX8xHPOPscFdudj1x12iBll4FdKlMyujwNXOiRUQWaNpnwlyFLTvsg3TGQA3loS8zGu2GngT-19UDczkDGT90TLfDltQdDw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
