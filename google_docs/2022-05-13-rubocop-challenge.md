---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/8LTuZfxNbcQ-s230ntCiZYTFWCEkH0ANNHtsHzOpx_dWwwRz4g7XDeaIwmSHnm85rj0SQDypK_aFNmX_cHwg_NHF3QmjZJgF4JC6mSh-nbiLsbgq_w2yYYxl9ckRry0Oft5mJXB4BDWUwrKxnzb_1hySRBrJqrSUAsKwzQYQptZ4HB6jyxyr1bY3)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/LBcdG_pjCCQhbA7RDubqsiwNDNbifvtIMKafbK8CaB-gWfXjbyX5UMLjptwG6vMbgcWxwecQhmj47uy-U8v9_HeR_gTgqo-ttn891voQuHoVjMXPABu0niYQz02cu4xhADqwxxoTv-YCGxeZK61P3k7Os_pKUPGLQg5Zv0-JaPUYLq44WjSomU8P)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/dHs3hAoBr1PXNzVISnlX92ZUyOwDgT9c3zRKuQwDOdfBPxJf3iMl5Rbw93DC61d5U5kxs0u2qsmOrXSHiIXKlIsChh3kVFt5JxgQjDxbO0VjvM2Z8aSgaVo-MIcDjC7_-jVcaPDqv1ZkkBTjmzIht9xP7kSA_o9GCBogEDt99l6e-dWb5IlNfL1X)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
