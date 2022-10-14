---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/x7QyzJb79r6OO59KXGssDqtY2SWPL0TvxxxlFVwsdbO1OVfX-ZRI6cbC7kaLp5SvBcM-7d5mLXbUbVo01y6B5OzGoFEbq-Ri69CNfpK9vNMCK-VfgDGi3Y8XLYT5FTsxIEuiavNA6J77N_eMg9-KlTxgBjc0HGieDdHBfdUkvYUoI7nkB-XjEpyV)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/RphMaSWBxKbQXrrehEixQpFSCfokUvaAe18TQ-RdwDyyu3w78RBejOUeu_cOU-p-EpzR8XVAKv-UOiEqii1Pm8yTzoa2Yt7_Xe7JkZ-sTJFcR6fjFAyFdBGmGnB66U8_zcRD9XwFDg5JPXbjL5P8tF7lZYhF4wuD7sBBh3WZoW_snPCk9JapN76z)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Ldz1ULCPJ88261RP6I4HoWI5ym_ZhZTEG8Lnxn88RNVM89uEwLeJuq__m-EggQoZYzXysvxA5s-rFOAqpO_mAJF8H2kzh6bUt6poEUR_UYVpLBfH8MZILt3EG47dSHkmnFCZGi34ksGQCqfqpigRCVR-2yg1jdB78UVdDRXY6setHQlOwTEhd-mb)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
