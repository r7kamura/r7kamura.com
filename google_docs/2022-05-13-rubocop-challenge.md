---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Y0YFJ43kz9ESXmyGikppnzA4z2gPHTTGV4qC3K4az5VjKPUQDWwGprIcwUoYgdRPqCgr2ZzkXzm8JMMEPH8M_OYX9jTGrTDhM9EAdZc2AjFeFVrHrzn3onp22HtLPL7TO_T-Mr8sytWZZkM4MzauwSeG35kRbXNscNzJZlJnfz2CdDUkv0kfLQ6u)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/4XfWBcrx_uBSFKuSIjFx2AyziH5qQTHXvdvnmv7JPE8NUw1LtU_05KSJFazYvIVmtR6irgVqdvs-mPHt2DwUxeT2MXsRlxtnLTG-TlUtpwjpAhWh13I4iX1VAczWGqjr-jU73yxXzv1oCGv2PqAe8vgP-NPxEYlk8rtmQJSNatdx2KXlb1R59zRm)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/v8bzXo6R9UFf6sT2Lcq05NKO5c0lqX2pVJYnktqveMMgbD8dcDO6Su8ZE1JRp9VmNQCS1tDqdRLDX9DByeOwntJCo6k-8zaXxoilYnBAXM_ou38ye0ET4czHxO6W9Duq5ek9eWfcnBQCBbN37_1DLpRN-7gR2Cw17Gw-3S0ELkkuMyMcQkwc6cgJ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
