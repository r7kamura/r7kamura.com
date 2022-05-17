---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/o6MrpAZhIkMnflibN_hqArSdOiLwqsCabujuDX6EwWlVPfhJOJ_G42YJi0lrQKcLfBPHAmkj59OFA-RsDMBoct6drOGYOZpsQju6OShwWhmTHUIr6y3L_fXCAyNEXfRfc_7MrDPBljDu4OHxlA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/N73eBsfNUVQ4oZF1SlyjnhPxuzDuzrtjBFPotnA9Y4KgXD1YFkH-2icBbdOFw4MW23yUWyrFcpKY8W4TzX1DHOmYjjw5yPfxozg_UHNaZdkJ_NFaJbzVlHEo7uwKPqicOKUi7JgQxBPadRb1MQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/koLvonUN2-e_kNzXjMTMgrBCsNB1CT1KYUyCmnHlulHVeucDV6ghF0gMno0RnkwjZuOHPrlW_8_k-PY5g7o-9ym1CUJRJB9-Lb1UiU7ZDY2_jdMmu8LDZ-Hp_owPutiNMzfSW3X0ENjp6bBdCA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
