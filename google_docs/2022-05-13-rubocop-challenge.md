---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/PeHhATPBFyQpo5O5bgbb1PFm6Bxct3rCUif-HjxE5kRU90j5v01BJ-KMxNWSZVT3hSxSKRWBtyOgxg9UzQ1p-CejGx-j9gurMnK8IJUvAj9Uw4547H55suKhixXhlP5CSZj7BAuAgu9w6xZydMDnq0SPOrtM1hRgDJjJtoT5MwDe0vRvCPX-fE0D)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/_xOL0POsdEAS5h0efBqpG6B-NBX6B4KWBhkzZtzPihlwcx81JbFODsvEvFJgssnmTBvhnKATOXEj9modv_d38KYDzwHWMTK1CdJ_lQ89WXnLaAuBnV8jiAeUwolXJBawTna92etPxqt-p-F-iRbJQ7QGglp9CqWtzsShEh0EDvb3rxneCel2qaiL)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/P2g0l3NI4btXafvArUa8BNmzRBHadbZMVNIyhW17J_4wGnlcuzmMSUfWhkRbs0S0ukX7bJRfG_sbbHPyneRR695CBSM_NX86Y5wG9s6JMxaerRBw1gBhtPgkX8mASI8gDqsgjJ-53H43GWce3RqjWQothqYccVtc6PCv_u1okgCvVIpSklhbLIZj)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
