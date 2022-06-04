---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/On_LbkYOnUkQ9gnoip1blhJN0KSUgxABBU0PNoo2tF9_UiYazBRYHNZa7jS5pidXiJmHaESc2pQkKaoVBW8Wl0hIEa7MhLw65k5wMjMve6zUS2D3_yGkTNqp_WWWTFVB6BSp5p8l1ycvrXfqhQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/l8e5mFj1SwJVZn6aqXJY4dJq9dxjoDYElTGrhwe_LBcpAvNfMSjTqBfRoRNnd62C6y5ROnyQqNRhzVkScYz3QmN0lOx7jszDnBuPyEXzRlaqrilqToefypwy8NjCh08ml6eo6X-onV9-1tT6Yg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/JSygekobtQ9WwuUGzyrec31qHH4Tgl3mUVjQ83JSRf3KivZoak4CTY-demPdZ4ey4-ZGuPXAnfGjq0IeQVh3i8bblp5DM_hEFj-3FHuXuNJAalLTFX3C7pbln9Q8CNNIOZveY-Bd5h1L0e5RSg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
