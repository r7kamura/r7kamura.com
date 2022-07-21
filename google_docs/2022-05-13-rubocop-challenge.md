---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/5x81wc8lkUgOImh2_cBhzFuz9VuZBHdLDbyxHnYOiAYuWum5AxgDHZ4xruCJWaPwgfdUNCEK5LaKA7_qkweZ1H6J0sJ9SdCbpnkY0sxJwjpmf_V9cQZFF5n9MDHt3ed7x2HUg6irWVDpcxcXDUxDCg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/o5VfQLp-TC5jX97M31j8IcWsBN2ytkacChxOdyCYbmYYhgydbBDVi517UpvmXictjUWP8pSeWCxjYeZ5bqUsuVM0k-4i5JP_MFyfmw2y5P5j5bk956X4Q-b1jY28UE3rxl-HXlLGwGCce7RU2veECQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/-hDqPtp1242dngvcgGUPZrQT64dKQNJhGu9AnHLTWwILTPoyax907yDz_tEzGGRhdwjtbWtkzu1ni-Q3O8L_r2HAxMOzeeUmDuV2Qy1ZjfPzSwlICzdhhEy8gyo3Dp_fI81B8-ci3yJQXhbAp6nqeA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
