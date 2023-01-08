---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/NbANs5dWMVRQCl3tfD-RkPDl-IPaxSycT8MMmlCG9vTMbUECPq4gkrUsnYdgDCOLqK-I5xBw1Z1L9SYMp6dKC8aFP5caj_4LjflD35PnNUPdVlM3X1gWUH4oJexlVFNsDylYmNBfWjLXP_P56MYh9SWiKZtcKtMD9VbXxfkP8q1idG1u0MiHL4dTlnB5)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/IYVKKLuTJYFz0E53J5UCLVZZyj4KRPr6CQ2ovLDpkzAe_P6sx8y893xIPE_WgnulT-4TdcuQtUHpC_BRXJwnR_x3obRQFORBO5DN-omqd4MywDHtaUlqcqJMLaPrYR0k5wjoYwQJshJdlTGBm6CdNsEaab4cHaEfCsu7-YKadx5npA5CWSsmi8aLZy8o)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/w6Ywie5VdDyxxMNJgYxa-p5ID9Dr6_Pmc0fUQUblQ-jcwygPGn3N75lIw28WbO33YNd1yUFG58aIZK5Rqw_m5GbqvmCt3Ov9EevVb14Tv9vVuDy9q3-WWe70D3EACikPhICWiLcRJ7JJaf6FrBXIKmo8A3XP8OmvFWiQe4RCObD884Eh0wXJm4rv8dB5)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
