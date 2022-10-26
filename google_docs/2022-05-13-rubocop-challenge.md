---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/xcH2pqSLskxk9JguSCbyvtqwxCvwr9w0as-25GazITIBbF8vVkuJmuXkO-EhRKg_jtWI18J7j4sWEalZLk10MJdB4U6AO_Y88GonM82N_zbQSMxgM0yWwTs9ACeazN5unHp_OltowpB0xKWce2-TQFMOJpQUNarZR8B44VN_-H6W3IqShMZ-6Cib)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/M7RkgNeM3aaKf1sSWksatkR7lEiWblM22-4nTZdxQRYA03Nt9Hj1e9YbWpKIO5XE2CwWKrCPo4NZ-Pu20QX6EvpdxR34NITdpY8AaecNRx_Om9qN8TkCyFnR4zRbwh4loY2qPD4Fq-2UYB1iAv1d-ZDUXo4DmrHsoV5lkrhshNdMl23ZJ4vVr4He)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/rplyW9zMzyCMwi2elSEwoPywy9s4qTcYBBza7Y8zYH8cNykah0TAqFhBXn-jFVdGJv21xbHjdEjdfIFOSxtfD5bbsLjVc7BzGpRKTfRcBmxQYuxYFksYMl73f1amwxmRsC5IJ4r-dFKlle-g2fKksWQDeW13KlyeQqfs3HKofSGExu5Cs3mOHTPY)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
