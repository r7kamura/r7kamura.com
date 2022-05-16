---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/aalQ2vGnbjySk44bt88orGNbwJZUgy5QeuW7bxejwJssLk_VhOqzdWxVsUEjADlIgLTmzcpt5fuM0RSrwRMDnsUhfIyKhhpFgBkQSevFGTNGi57NyENEi0ET-Q_Pe1yHebis3K6fsXzeP1bBuA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/ve1ZM9D2W15yuydTlAn7VIup3WsPLX202CZrlGY46G4pAfGMbbI9vnyXF_azXyzQ-z05kYbzoB-pFuZg5feIDBXTkr_pzotnWYYEevMzXK_VtHlHxbXiedzuUmZc02S1xuYyQXlSy0-Lu5F4wg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/LYacXhgj5PGNrsYG7s4zUGd4zIvfsVk21E0qfZM5-UfWZj2dracXzr6Z5R3vs5FJLv4r0MaqpnkAHcEfLO0fm2YtVxwU1goHbtbDmV6RA1D3c4VneevxVlVXOp7J7ue5v9eyJGs-lpN2OyT-rg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
