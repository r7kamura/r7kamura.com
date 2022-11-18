---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/s0WhfjeLGU-7QqQBhTAEdevjnyqUZ-VsUUbPeyi8CH-jHtCxRMCD9dR_vPNcK7fFv1UGvkdlAJbRBUE3d6vhIs5hHBGnGEGTjNBBZAa8ayOPY8SmLyjVG2I_Wh6fKw3x6NV4n39M-LibJgBTwM0jkYjc4QApJb7NxV98GmQ6bFpnD_B2Ht5xJ9l-6bO8)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/B8TxkPJS9h19TbMmYGG_ACb8pvS3dZ63660_ru1Fbge1Sg5fOBEO31NR_mq9v5gsO3EFbEYoCZVa3pqRqt_Kap3MfkfopMYdkBd8r220yE6Gi5YyW-r7h7kIIGxuYIyIEC8GCOTX9ssMDf0tMBfunSUgTbsk3LSVn9PyW7YN6KmpAOBQxDti6DzlPt6D)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/427h5fWaeFlm-Vj30XHPZMPjZs2PsQSQAPHSZsr1c0bnZxhYq_xO78qDTSyj9GfKnGK1RMRPrZfReFNeMhsK7QTwFh_B2nL_Kbi0Asva2YKOKAcoB-qUx7sYyu1IfSU-yUgo0sBuc8Sjc_Z3FJG6VfZWcDXhEMmp0LU0A_skQaAezfltpziYPEImPwbU)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
