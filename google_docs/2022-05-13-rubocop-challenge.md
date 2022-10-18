---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/aAqgrfBFmsNHSbOMj0yEaoY-ndZe6Js2q1xtOLbK8U4VmuVGGvdLDocv17lsa6DB4h3YiHT9jeZywQ7--k57VV63YVqGNo6vgbts3tw0oUNeCmVd-uXb1oZbKD78JFkhciAlhsO8x9zfiSzuVxQtDj7iqM8QOcs6jLNED--xmXTE8lC2ecR4Jlci)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/ABvRB8buT50V76PxPR0S8GUbmLWcBO3_Oxd0IKiFQU2ZVyb8CGke8WS06uD1gWQL4C2PeNsv8mn3S7zd-eR-aPwi6iTVktEto_nXMEfEpyV20-r3fprSEipELiCuSoYOAfIzQUUPGFoNFnmqN01Rz3GHgCXMg2L1d-3ZrYeMmic2fQ2LvMO5Yl_B)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/d_5er04rzMDL4apz8KXnd8vo3LzejfU5Ac2aTwTbW76yRPuTqY2amw0FOyR0TkVM1O_lLDkoGSwL_4U9Q2SSvWqPHPIsHQOE109YKGShjbhZyPvZwZyaes59MY8HExIxWgvIZ6PkQVkFsUcJPa_jQ_AxHhdczKrJMZFl7oW970Iz3c56h51o5orM)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
