---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/IllBBh8quTFllrwYag-KqtqyOgXK-oLkvUowR5PZD-L7skKGzlwbJcMLYdBeNx8ikhCBnr9DAh65HHPwi05Y2rFuEXj4aMrhXYy281pU0HeTwKyyOhQAYIDQPukeSAGQT36MXYq_j1spyNdZsg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/43rXAbU1AlKjba4tY6tHoibqKBag_FEliB8oKvHfUPVD1BFChPOAMz5wDCY6nfWSd3c5GBoAMVP9snqHno8nsR5LHQB4zGMk967otz2FPODKGy5MMqAz2H3n4ird6HCLj9EgvVHfHYjVP-toqQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/XH0Azjq-7ja6zyxm8xlSsmqRj49F7soRqQYUPhLFXB6ExYAU1Ji2YRvql603I7SPvq8KHJv5vrjwDzT3nIMoSxpnUs3uhG-tBYvdGWeoI3S_ujHdJPD7Ol10AzlqqJstVKZLFIwNgYGVmZUYEA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
