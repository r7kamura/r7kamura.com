---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/OKz-yV86DeLvZO-XxgyvIag67Zf7wm7PUGKWOveCpSh37CYPT7_nRhrM04CULWtyoJpQLiCJuwCKU7FPlT-xPzlvf5mD-inoW2-SVzx7Z922SzsClWrcdey6hHC0aHXy3vO8FvhNJBl66lqdIw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/65f44o5s9rYcc6JbgxpAOvmIgKsrXL-7OHZsjtOowcIdBW7NBPigUjXo9UJrIOJYD-bCCo2IojvRdRr6MpADQZnWwObi8hFUsMkQxcmxDPK9OZCJNOIqIxORGqjFyXvJffmQoq68NnfZRn1oDA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/7K-0AJjiuiigKdYwAHGDyOrTzBMCRavaKPgux54tjb2sOhj1N735ZTATyMo1t4AN1adLF0wPaGAAcHywXwycDfb2fGAKHxeos13_mdLM9_X_MS3I_ogaLddfluYC3cklPFQbECjnFUsMAAMtoQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
