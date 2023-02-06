---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/iywZHC2oByk7NZIoJrrnVu0Zs-qZbYINu4CHrfb1JzymQfLQ7wXMJ-mi8U9_LJ2xj6C1ek84rbK3kbDQbGuUVBqyEFAfnUkryZFEtY8R1E8UyIKgUg330T1vI88he1FThn_WZRKdnfKkoqWtNUQsTA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/fKXOd8L-m9vTE6SJf6aMhfUKZYYkDKwytJ4PtFM5lXnJujmjQ2mhO85bec-RrSdiFPMtwzHvofLGbnImtx8B0xHKn0ego-mK7iKN01b4bRvPEk8P_E-ZpVbbqRXYfxl0tQEaXKGMrPA62radxdQ-ow)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/rV1uO1hpXfWPCimpONw2pghKA6yfIGFAWX2iyIIFD7qcUxtJxsqs08vnS8vnt3_5YrJDudAokSvXVXc1DKUqLgHi7f3UYnmO8nXzTw525MZnzjZiRn7i2q-2GY0Nv35vxp171JaHlgs-V73DqEbEtw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
