---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/5rxLoAblD8kr9gc-Alnyqri3uvSTGn4FkBT9NjG13YTwR31Pl1ySz3H2mwxz69lRwPQDF59JDlU228Nt5jrGsCESEVmT436vOwM4ekrON51qNKl2KktbW_Wmmq8zfP1TtF2p88rPMD_fIEavug)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/MufzR9AdM-67TQbQ0dSvtqthm2jHY373AmgffWwzNsvXc2jKbc3e_s7n6p91xo2totM6ch7pTNUyxFrwxn5VSBUbBWIw-sgl1M9gSet_2VOiry2P2hHz7MveOFZn4qrhlmN9TYI9s_lCvgICEw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/m_ycLsItsfjiIyQCfFqmceT6AjI-4CQSCcoLlCwybB_9CtLXXmI2ZtWasz6MYq65Ao6c7I4INgUxj-2VtTh6LqJsQEpcH1GCC0yy_NNVqpWK_xlH0AHwPN4dgslcZGr15gzhPi-Ikjhn7dFgng)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
