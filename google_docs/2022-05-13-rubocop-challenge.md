---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/O4G_JUYPELqKh-D6oM7_OY-t9hH7NqtC7rhtryVIl3m_KBsrUkykJKZn10dbuWGWGL6dA6DtG2yV9T2g_8H8D5ZKh324RXWm998z4t1W-c8RPb8DqBrUsHUGC6AbZJDNYxQqWNdijXNBDlyzhA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ObcCZ-SIhVhTsUd5SHYuez19nYxYlUNngnU1a26zWAQ2SnxiUh9YrV3L85ux47G4jsAM8KlB78vIUBidKJsloU98jqf3AXw_rVTbNJcoRbGXDzNCimNxY_ENMkVwEn9IZdIxPpycOJF-S8WQGg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/k9WePYVxCY4hrAQGr-ZcpYx5DJV9-X5eXK47dHFMaYmg0ZxP4rcoKTuO_AzvEdcDm5tt8lEColEPylVT3tI2cFfUA02IazwYFchIa0GIhfpO0z1_UNaQhGHFkOtS78hRzJ02V2oXzw_UL6PPlg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
