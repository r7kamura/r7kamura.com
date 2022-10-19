---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/MgQ16v1Scnbaf6X5925_erQeFYhxNTXIJGO30jsrJcvhzgh66KabenYSxE_kSdWyhkAI4czcNrGoIjxn8kppvhoOLPlqVK_7AZyEk5WKD2W_CZga4QBeUy4J7sq0Rw8Ob844sD7v8UVU23qWIDkNwc6mkveh3y2jniLMuL1f5mTSRR7eLKIIlmNZ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/5FnNhXVmiky2wg2syvWGGWv3B4GHZx5GXg-QnkQRzoZKkpId_sxuUPGIWJNUdyhUzo_FXdrSQbVn6uJdoNow1CDgc7L40XrH45hOzaDJAe3AZkHEBLvI3CfAJfGUFqN4OGxtUNfsRfvq0FK9W61eIQMCX0hk1Le_CfkvD4wp0FmEbQRjy3MVd6uY)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/uPNPXuwfv1aY5iATXwVuwiPS4auMpVvbDVprFGTxoWSdvnecf2ZPs2WxVIxoSvAmXZoJbg2zQV4Rl3THXri113ifZWt14JfCT95ldwjZD-brSOtb_KwXW2G_Omv_IjVoF8zdt0CoP2a-as8VYfQ1GSHRNhYxsTUh-cgaxlnpDTMbDcEX6l8iWWBI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
