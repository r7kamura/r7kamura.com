---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/NFdnyLhJWJbaLC_JoWP0yr0OsgYSFn-EZW8aXMxsqSPj35J0eMJcG2TTR2U0Doi5HKHJ-AvWCS_ipvXR8UjR6UVWxBJsI0mmoj8RrsXXtNREesxebl4bO4LuBS14QXgEoS0oa4YZ33bjQUJpeQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Yyg8cSfbDqti-vkyePT0-DXpfz9CCVNJJmcAgBEQvzonbD3YqNhEPCVbJzbGGtMTNJi8UHvgo3gnprA4UPIkI-QTZ_yDj6qpl1Dq13dX3GvNWRa42vMHJLeuS1rpk3--Pg77JTkhMA8ScFBiLg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/r5Ykg_NvFk0WpXyf8DI-k0f-97QdLqNE9OhrDFwmwA8N9UUUmjJSn5g30CtciO-eVwYot56Sm6GQ1p7qbJCsRiggrs7cz762c7snZqCzR5wYPw_O5BgnMpPreJBd4EYfKfGcpobuBxnJ8kxbKg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
