---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/frq66obfc4G2pRj3lHD4g0lFoIUDIZyz4jDhC72V6szjrA44R0p5YXHvyU_OWET-ZTBLT-iu0T3T8657g9Eb1xO8shQBuaJ-nhI1KEsRMT5B5rqJA9_zkplS0LtxeH2bJylXON7_8v-uO_T4zA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/UturVEp2Gxj_LAgHv6sr7lS8Udu2SkBLRlm4bT_Bdh6z-UfW117SyqL_ZDw303J6Zok3JreUGBxJ3D5sj29pX099TFEJpKRV1cm1N-HdCfXpeyqlCbiQxjd2brvp-g-dfJjzQT4s9jeJ_AiVsw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/LuNEbS74glNCG54A79bY-QqfK8tptbcZ4GBvhEoQoPAcuEqF1uobSYVSxuZ2JXL3COQf5oGQnKplZXFkSkdGbevR1kBrpKnRK8u5GF31iuPzmNsgfx3MAHzOOc_60tli5VUPnOhYN7IRfkD1ig)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
