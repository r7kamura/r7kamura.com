---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/mBgMOpFhL8BCT31y3I74wM2IJWoy9-D2m5NavHsJWpQKUMYyDTYsg_nwStafRLB9ACxPj7UVR0AKAesLvWxtSX3GDLKHC9OMlgc6V0BiQ_pe8fNy7FPnK2_oINSPQTqF6Ubtqyhy2Al7mausUQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/uYDTERCJ5g7z8cl4Bef5v-9XoG7boOd_rCkWYQV0q586DpzGUTD0yJjqJYqwK9BsILcqsxWrmEaYcMmvnzj_9rGdMq_BxWJo52Ss3-vpku09AzG1dJtvryNqNJYAa3aPIUtTU12fU4piQrJhtg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/ga7B8gf4NPEPXzqFqh9jOGNIVEm-j8wEz1rmrzoH62B_dl2wzgZprrbon3C8eZDQsnZVwUoFmJbFhlnZ0lk9zRspLAAC4bdyn1IFNo9rwUIPwQ3qKmamSpvWGgPqVY4I1JoKFliH59DNOiPL5A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
