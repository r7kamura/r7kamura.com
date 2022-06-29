---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/w4EYmWhbRep2tpEX3r7sde_lOKqsylCKNVgclTwceP9bXgViANR-JSnix2Pf48-h3EFITavwRCx_PVAD6xtQCc43ZkoYnPftjDi3-iNkPlLdQPq0LAfQ-Hh1fn6PlDSlpyYjUWgH03wNaTushQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/m4Zox2MELIUUuru8gJix69-JUq9uxkVUUh8sKy8v-yIli3lczKtLUA0Htw8aalLhcrkEYrjwlKoO-TysLZN136Oe4gtyFJqWyvvTs6YtjJHzkWOOmRIHgtxEuIjAqJXpNDfvjLoVchfyJ8FBcA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/1QkuPi-pvDONDCUj-SVInOcF7BYVm0HE-Y3eWe6GApW9EKR9zPs5sFaMX8cAbL61inGLdEARr5EtDi6z5waHGHTZaEOToPIbdeXdQ1xw9Bhae7gX3TWdx2TmRLQ1Khxm8wIctEEzatu4RjNPIg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
