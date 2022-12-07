---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/Cw-12K-D5yqdqb7ueLRyYf8DQXSbOz_LqFGpIipyiiiGKA-df9X71jb1tAxW4wQS0GObdxxLnST3jl-oOVsVmmlQPbqMnptovfd5_ilnHyY0MOCjWptXPMHGJGOr-wiIJEwL2pSWFQlofkWbeq_yhxmFB1m4-cctFgZfG7m8C_p0xDKAYjQSlHBnxWC8)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/VaiEtMOCAporRUTiqqp6rObX-7ncDiBFOJki5Ao6yr8Bfhj024LTyk2_5lDCCHh0NHxDmAHfBySiS2J-lhcXkajGjYF4DWLCmrgbYeaJCK7HXl9a1HJf8LGtts35ktiXuQTVhNfQva8CBuYDsE6BTaUNxglU6XfGzS2Fh_2-RZpRiqCfC4V6Vc8YbaJw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/rLmcDylWj7vZ3ew_fbXsrrPXZDtuK7iHe4pJXGRzwjwMHsDYIGQq05fQ7l04ak0qnymgv4D1LcLbNi1oSHcKDFfRxYuOnsqlXw4ZATu2JrWfKJEi5_oAy-wZC05joxTBSBcyy_fLx8mRSGWatI1jo6zBxr5zdJGu1WxXIXFIyxKFSjwCHsXLEc6YbAlp)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
