---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/EhcC4iP78i0zMIJO2T-Oa_6vQ7SJPKK_be8fndmDwuTCM7i9zk2zaqtOpNuZQgChe5dCFuoRj-IMPEvNdin23yKHmE9q9Af-VjhrzhKofzceeQptJp-zzG525Lkwfr8mSeDTlIiBZcltKhPobw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/bX22zph2SP-IwT6vyjWkP9QvepLroDh7VdEt4fz7HstTq4d3bbBqes6AKC-BSLwLKAE0u6Ln7z1N--3kzkt4RI8tTixswykjvMElY7Eg6EJyRvxUvP-ln5xszhfDa5hzoaeqGqcDSBJYMPxuUQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/ZrYoRkFtIsj1arCvpBnEnwuDkDnU9hG1T7pyavO5DCtpZOoln8JeJB-sQew8-UbAatqlyXfmiUN7eIoPVhfluNYEq1G5q6sHPCOYo2SbJ3sjlkpS78NTZM_G98em47bj7m0itO0nD8lx3nh1zA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
