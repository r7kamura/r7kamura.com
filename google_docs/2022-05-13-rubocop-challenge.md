---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/_4GFyhL1OJ2cKZ-xS0iYJR_PR6TyU4B4Rtnu-3kL0vNx4LJ2BpKESOxDWQwe5jSSMNnIrZgY8oLrkaSbbn_GYkmrd1kRFMLr8TetjL7GD4k5snSKvlOhrIC-s3yjNdZUpsn9HJR-dvcuTKf-V2ARSw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/1vIZIObMtpqxbojBuDjrrE-p3UGjpbYmBYGlKjGGZ7Dbp9WErMjHC_NMher8CR_7h38pzpe5JdZJ6FkTG3iJKCxVvLsFaqFZ5QZS-OdCrKBa4hZvXvMo0KMBR1Wm9kA4oEo1-MGt0666lRJ-ZMadDA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/0JJLRY2627ZoKwb0F3jdyjNAlNyTejvnvCzqCG6xRs8IY9K44VQ3N_RuvD84FJErDNHhEqyGMWuvY1SnEX1ozYZDn_14CMsRI-u_YAoNBRhNVZXU2xJkcqzhhShhocow8uUeDE0J3GMg3RQzpnNciA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
