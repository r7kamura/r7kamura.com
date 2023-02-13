---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/YVC65XtSBx--DBdxJD1Snn8mxv2Man5NQyN6f4fj4RbW0qatJ6InoK1eLqSssekc7IEUv0byfO9eiuwhxS5hsQRaas9IRbS8vgdU1Q9HmCFFZDPikOahP2rKBrsUCY4RrNGCbShlUMv775OuBzzV-w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/PDbAqRakC8Y09epEqUIUdEOP9dCXZnf4rtmfKoderCVY7MwoF9jfiGGaBiJK3nsIUMLkVrOdQSMUlro-P3jwFRlj93ooxVYUEMn-Zqp_m3t7fF_ptGGPnDn_wXvLTv4l0-ZciLXGe7N0jmTqCprR3Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/b0CjBNc3jeriOAycRLeOE6kjZ9EHd-0of3-jQljGyTjtDoa1GQzkZh_V-5hV2mQUiYaSOXdhnMEIc-K1RsAqr26LRBMsss-iU1M49Vr6JBiRtc3CmpOQ8i1ZX8loMt6lxp45iPFu3zSJW2vw9D4P-Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
