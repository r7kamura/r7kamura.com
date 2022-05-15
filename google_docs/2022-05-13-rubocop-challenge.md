---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/flYFhNKNSVJIeNaB4RAqfTQdkxNLQdjjGVh2jrT8K1SAH4Slwzuh-h04ll5YXKHBOh4eRF15IoRZH5oUKtHlVKFrVLpvVz5b-1Mrsr93eYLImfV9kEdHvc3RwfGDTbYoij3f_7HVO9Vmh5BeEA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/rNPsJd9pLdcHK5o0zxZj_n0nZeMUmJGWmQaflScX7ysVZjxaPRoX9_yDJUzuMCczqMtDmd7_yMYX_DgbpSTnqqE6j47DprbnwXMitSOPmLZ8h4tE-ecf0oFih_5ae4TZCJdJMTNdn5J8TFm-Vw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/T5EeHL6AzOawJ8ls0Ed4y0Ps8Ewh-JWfxE-Hq0M16WHIxueDQKy8Lc6H3WmgsCMRU63FW3SSd944socwjx1sfmMyD4GqQt8h3npl3Z-e3Idbxy4ZXkEc4hiuVEEzRblKu7WytMHH8y8GNKrBAA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
