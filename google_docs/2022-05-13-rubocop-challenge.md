---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/CwEPun4alaQ05FHtW3gR5O8XkzPrpzeZuE-nbxxWiyPr1midZx7krXXPSSuqVV-QtlbYwgmLf5fLvPLx5390hBY0tR1cY-mc4xR_jzMMTXhMta-aNMuyGBsZnRQAwLa4fGHSt16u0B6HpAjnVY-Nsw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/m1XvBUPhTAvOGYJ7VWvhBT6ZbU_hSu5XbteYLe7jmcG6wZYkW1lAHcajQjG5cOs-6elCPm-NwMxBxOH1jxlj7vQhko2MZsKKjR3M-FBa6jp-pQJQ3XzSnqwKuCyYFx4J7u_zDlZBqo3oOTGjTAE14w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/hfY70Bn5O_tjx1Y6EyIUfZFN8IBG7AWIS-o2b-wdj1qhTETkH_UqvgxozV7enCaqii_ixRzQc2aM-t8JYXIuqSqj5h4Wgoj27yUKEkv_stSOug2B4MvTl3mk5M7puk_Zfi7NrPZ-YVlJLaAuPOouvg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
