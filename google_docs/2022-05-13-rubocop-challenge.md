---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/V8PapVsIt3Ap1CQq1curOfBJLJi_O0Gd8PJLiJSaDDxvDVd9xf3u6dMi2A_S_E2vuwiXCoradpgKMEEcE-75WeFsUgKm48VD5MzUio3mwLgW7Fm41ymxMAAaE88BHs3we3DsUUHRf0DfXD9y9Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/tTgWGBqizsRe2zVurhGOoZ5am0s26wB5CxbNSgZQr8YYg2UT7mVVzfyC0WeczHisPgaAJdvvJXwv4tiSJXIYLZ8EVilUo7WyEkEHJ1vmWzD1qTDON8QSZAGtdNN1SZuwZfN28RPBQ8qhb2539A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/0L4pj0r1nxEhy9V5mVbuDUA-_ojyGK0kZIpPuy7dq6W1nq6QKrP03VIM0vbA9cZUAvbQlzaVVDASIcM_rT8ZhtKLU-WTXE8ejHgNOwkkxi9kQVUoXR4d8oIdca0YjOaZ8AqdMckZR9hXqc_YvA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
