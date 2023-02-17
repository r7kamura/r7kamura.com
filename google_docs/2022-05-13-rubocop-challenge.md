---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/5HIWmE-ahGvGx2JDxuqVB463gEj63X1F9xq4XBv3qxy6-jI3w5jUyOk2hfKKwwaBuGBm469VDPske9UIrNNjSEbLeRkvqXM0CEZ8C_wnDlyc69LAJmkZf4PthtyujxsKsXiSqZXQIIKRIF351TFD3g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/EH2sXxZaUfToXsCLrAds4RaU29fQT5f67ZMOQc8ByPj-GFEfmR34PYYx7dCcZs_KH_I9fbqokZ8hikLilIcdru6teNtvX-sHyQjV5dMqYhM1Q_fyOkWDNAveWeMXf9piII60TldhWKvyRJBtzBGj2w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/H5nW1iazR96MiOk9R1nPoa1YAcZYCpK-dLU88DG-2DjbHNtBRAoyqeLH2K8tMIQ_jdqsvHuDpvre92wrOUpQxLa06jYslBLMn8WyDXkooakrYq8mR9INXCKt7fJ-N5rfgnnJ4AUM3S-UN4x2fhAbAg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
