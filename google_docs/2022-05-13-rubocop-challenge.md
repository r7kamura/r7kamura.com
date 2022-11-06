---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/BbB4eIqADnXYmxYp4x42O-OdMxCIrpS16tYKUMOggiZBWqAlI1NrmKP8Pv8_cBhxbrCgCjBC61pEVYTokt4QnAklPK2E1cgbJKs_yzhPsMMC7HRM86v0hx9d3zKW93ow-17tWH1jaUyTujgi4_SXSqqkC6uJZt9fdWY7atp1xGpjhYfIsESrFfG2xBnz)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/aX7mgD9UYA_eEuN3QZEq-v35G0K0fdj_H7gwnYnuGERYQuhPIPiOAEev4RDiuhto5g7IDwRLRm-UEOZ18nRR2lwtjkB8WQFua_3nYE8iOTGkAqtWqTfqrqUkti6OejP5AQdNKqIo7OGeXwhNwl0AEdJWvwAtNi531ZjLg5dlsuoln9E_awLXOBZ9tovy)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/L5JX4mWC1Kuyi0QPfoAQruKu5kG9vqjRshn1XCQNb1Ybeb547nmpqepWIYvXqxO6n0hLT5zCSdzA4j7vSYVaBQtp1-hDuh2YsGiHgbe3vG1tyka4pMA-N3AfeiZZYzw4kyOJscJpjwCcCKdfYfSLF54S_ooApUPvp7FWc33EjtpviNt8F7EQMNM-qazq)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
