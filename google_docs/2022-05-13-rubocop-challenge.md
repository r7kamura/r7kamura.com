---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/D_U_UpQBFBNUMA1GHFdY_LYwq3yFqpDL529wfEdJ0QIY_MlGeuI6wr3qNpuh77aXm4GA4EaWuuV7Oci8i9iZH_CpWeucF7m_LzoLOP1eGqpop0ky2xMx8j-tWXaYdSY3SqjPsGgfNpW-IP-MYA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/YbpQ81nSFo92jc0kwdmUTW4gAmNYJmzMTvXuETyrImny_-ej6rLwCWvzz6IYMH9P4vXbg_ag0Py6pUEVYfScL6tv6-Y26P9OcgsLjoSVF_rZXhTBqNtFWlBj-4G-roipGSlshhsBeSXMcOjTSg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/5EruihNeC1xNq4IUF9swP21wbyYhzYaj__Oe8kSKJQP3ovGM1bQCAYyurbnk6MZx8cPb8sh9utf9KIyx200MEJEpjSfnEHnl8WmLjSC11PWUgOcKeUTksj9yc3-J5yY7bEiz09jFhdKrq_SaPQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
