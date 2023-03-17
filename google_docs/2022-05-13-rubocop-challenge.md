---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/QIIxnceL8BOoEEibOUbww5cWp3DOMhn63ujQh2B91FFEVA8OXOKX0Wuw4XSOhS2TO_z_nHg0ccATGFdbbL8GtLYAdnC_88or4GUZoTVYoEN8x5XvWRnqk6A2F5jnvIqfAGDSwb5uAgJnCgyz3iD1RA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/DUoQ0dKGEa64lfbT4YeCe7zIIk6xGLwzq4qIZzHRTSPoP-1cTkSNbriVtK7Id2JoIfYBaOyu9hAPMEPd-_3ANI6wifnXQnnyegu3ImxJOTjACsHO5db27AmS50VBq1lAcx6CIdrCagrhuuDRt87vww)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/qkPJVy0lo0BbKrg-W_oVlUZdYxxgJC6ymFqx_qhQhAEMxmDyfvajQcuj5v1nbhKB-cID8KXtqNOHup4A-CYO6e7QLlruAULCGQ7cpMyPG5Ype7YCmHhAsFZoSLYrpqGk3b9ULoh9674b-wQTwK1lZA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
