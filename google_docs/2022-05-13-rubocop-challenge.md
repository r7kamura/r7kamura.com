---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/daEHdLSV9U54u5mpcUj1Il4EhlcXB077yBEuiGBPkUhg6xCwkNnU7D64IjFglTsz76-z49a8iaqU3hJj4lL5kEHP3KrUXP1N3LNzI5ffl3mxP5lz5FIIDUUbafrSFxe6trIMsYGhWXZ6oe4PormALw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/6B7IparBTmOIlp1hj8qBz06tZ2QUr4g-JhdYHBFbH3dys0nl7jFtj6NnKXWhKoTe2zjiOzKwQs1znVF0uO8EICQw5WtAgASmlPdSrF2r0YIcyhmiqwJLpZI2nzgWY6F_3LU1Z43Sm06TbO6xIZuizw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/SQMIbU8RRkPHl7MvwFx3lNKA5zqjK30UI9l_ZxzJYJBQ0WRioNCskIsvBK9qMoAlMw1gbt7IOhSB58vi9BqL4MW0ObfMzSQzCTVUml-f1W5qJxhRK7qpeePRirgGrK6MruCCcpZjyiCaf-CIBa5xDg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
