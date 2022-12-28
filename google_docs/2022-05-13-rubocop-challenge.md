---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Rgs8AD6eyC_OgCPGLT_7D9JMui20O3qmsPsBR6HNKa_4FV7tE-x7tia-1wPq2ByhNEEu9SHhMWoS_11Ks1VGRRRSyeWzHkHG34CudIWbmyfDf27sv-OgGnNe1GQm9UVAXus4uqlk2bz_EYonFygRHXsStzri6c0KagYfKkxJT9Jxd0P9CNlXjPxZOtzQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/FgQkiK0sEf30xQOLmMbIcEu1KBhnBvWRKQ_6wGv8GkcStGD-pgSRrPo9gHrGjMYAV2JUmND_5vxEf-q51dBHo_IhQ_ZBBMyP6QbD1hZIOoBNcOq-6Al-Rn2c1fnS5GUd9DlvIjeTUztsO-29yRJffa6M8FnkdqB4y7tBeDJ_2Pxci_8Bc4gPkK67Kvp-)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/igSRaq_veiOklfBPCQUdJTmOBgeRYeYrDAfw-aAecAEaBixlsyy2mnk7ZK7ptJiT5wCGhliu54PUgKrZE0-RuA5AzmpzOIPz2BbKfvU16Lp4yyP-OXswkiG1FbDSKzJ-z6O9694lvNGk_lXo09IFpTPaqtJ3NYohdf--VUx7oh_DcPR99Z2ouzKyq9qg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
