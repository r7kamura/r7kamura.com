---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/Vm-Ghb0Uy6mX3cg9wj2uebiRAlVpcKy4lmSkmsYizc9g3xRNxMGzpi15SMgREQ9cyXWHx10Hx-t8O7EaNMAwLDOt-8wlyXd3mvALbWg_RJRrB5JvoCjWDly8yxfBpwwQd0czRZSbSjhifxuhJg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/1EaudH8xjwqjpzbK2Fa8Ib44jzHCnVdO5ALKIoV4diDEsK3FXDLF2mHiGJ4BpQhy7xBMvZEL_AZtiuawdUm0UlDDG-Urzt_wnAN5YHrUCTBD5porjER_ZErVNQgDdSLXG0uIAC_H2l3CPCrbaw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/l0W6V6BOh9s32EKpmunzPTUistPWy14pzE2ERS7ANZFElXEa-r_h67xeLbqmRlrpom3JWqDbMLRhvFUaNyD3fYxc2yyQWSBbBiR53H9wVYrexKsfDe6q2Cwp9-5rRRWPW0N9O5rX7HreJDAYDw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
