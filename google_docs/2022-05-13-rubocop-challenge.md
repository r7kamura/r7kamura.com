---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/AmmFvv98GcAK_xMr-NVmo7EllSpbfdb1K9vnmSe53L3N9wRP_-c-UfI69Pcviah5O7U6Ii3p3qdwIXSbMJEWNHj8W-0qV-wiihn5r3McjlDjGyYW7SFuXvWdiPu1qxiHt6zRa4p_nR7kqNGTiQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/FVZYhjimMpC92h8LD5TvUoA69uPNOJfLIf0s8cR4X4E-RNlp8h1vG5etps7_LJhkfTZDSXmiqIIgRmy8oC92eiW3FRJmCoa0o63rTSPHT1tOX7YP6_pfpaoXNT4aNM5jQSO3SeJMHYuz8cQXzg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/rxKz97ewGrYGPF-AR6dZRvM8RBZq-qeB9QTXo500G6uRe609kQbVBZh6J2hIClRSO8SzhQf4Miu5L4a1Fht9bp5DXH5HD5cWgJluBDoZnaYUoquRx5vCikIPLq49vN8aVVgzaUkpRBm5ITkriQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
