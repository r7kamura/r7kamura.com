---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/_nRlJzF_4fr2h-MVutrnJINdiF_F1eoQBgJY2eB4llzxZN_Xe2SsIpO14VAIfOuPXtiKwbEvH2HK21tbddnGO_IerPB0tUuiw716j5QDByR9XFR1xUz9jLoSVJDUf39bD_oVeG8IughQehIdTvuu4A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/O4O8V2TZtFjei2H2PfrueUnO9-PFB4Y5hMKKfdhXZo5Y5hfUqs8i26ysWgWAxyteAGri-CSha-tWcpJ89LCZSxO7DyrIBhl7BS_p5s0ls8jB_zf2dhmgVO8SNA61EE6K-LBodXDsQzh0-ueW57LWLw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/2sxM6X2HblAgqoYLBpe2vuIe6MtZC9yW3qsdHpSlM22KwBh4C8wGp2W8c0WhlIy3vgF1nQ-c2m2mu8axDPQz-aBE9QE8hrDIKMDO3BRocZDhCGYCysAIRBWXheZgNKfG5sx8-e2dSVb-dRSPRUb19g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
