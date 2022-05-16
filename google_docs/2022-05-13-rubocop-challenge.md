---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/7NpLlgWwUjiZM0x-VM35VEjwakrp2sYfDBYAgCqginsyu1z25n63PrHgiM-uiE9ababBM8yQQxuIu0G_CIlJTxreWHlRMlcctkI1V3FdrrJFACODAMWovf9VD0vjskCptRad6VlCRuZm7TRiFg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/VUVGVJgWpE7h6bqpGb5DV0Sin05GC6Jitye33oVdsMg6BtPxmBXfxTqfe14LXOmZ8p5In2oNpESnEjjRp8GkgiqTBPWWDS0mslbOJHLhbXKT7oRkfZoZ2zG3b5TmvtoN1kc5ryCyyqYW5T_LdA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/1cFUbw-E5YCeajZnRv_QdoiZilYkABoMJ5rSxWDx1hKwS1uGDpokBH5azwrZn5cLPks798-BKC-22l2IXMSB7J2QKjhMghU27vB_mYHetyEueuPUEndt_FZ2eF7vv5YUfkw3afJKpUQ2DDA9qQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
