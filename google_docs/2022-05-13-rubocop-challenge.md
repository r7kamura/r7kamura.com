---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/XWUfjEyQFVvrRu4SX9DyrTcyIkKy286GiIEorAlW0MPy5klqnhINuxYBJZUQdfyCFu5GpnHKJHgkQLbe2RTvCOmk5fDcdak6zTwxfeIIXQsP9W_7fOHy-YkJ90HbyIQGKUGFthzEesU_ESU9D2Ii5A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/pKhrlTxjg9wPLHNnaPrrXpxVKQOr0xuVxhPZNluAMb8o1n8WjDqNir6YDuHBO7po1ol5ySt84u9rAOgK1BudG0PStWAHPHwjRByfrequdYPMKnEPBcQQzU4bT52qjwXrpWv4H0ZIPvU2T5Qg5_cKhg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/vbNSyIoMcQfehKVApJZUX2s1YSMhWR-7jGmaTbf_7LEIuYmLlWuB7z2eKEGEaB923QuZ1fDL2s-KfajyVskEJjImdG709fIfQTERKR0LxDzroO8tNBOA1eVkfaxEdCaQyLvxhb1BBnj7BuUJfn-JGA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
