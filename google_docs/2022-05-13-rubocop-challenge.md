---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/rcUZBYuiUYSMfaVAVFsEf8YpCnPQroLarUfF69rm32QbIOMgWDJnzr1Vr8q9EdJGJ5_Ght2_rbl7NfTiTvjiJgSqwplP9skoJZywpnJJmw9-Ta5mJKS6i6rJxRmUSWtg3Bv-rVZmCWOYxPr4jYaEc9QblyO0ydYVROPrcG5bPu5ZH0hsVGEF_jc8rE24)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/-QDBwL4CwT-rDASfOmXSpx6u8M24w4XM6XYRdR4o9bgqK8DyNV_6BoobIjR9oD0qeRndgvErqhetkcSyJctLS2CgixGxRiQmfeZTAu66xhbG86F0_6nA_QdUUyZWQpbRCB7-Y_boEfcF55S0AoSMXAoF42csLyF29CB-aqPyAHCeg-Izyeza33aO7vV8)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/8HdUyiqB_jYRSwaVi9NUcg_WmhSoIKzh-_u9pABJNsVXMVW5K2tlJpFQO1FFpsgQ05J0c-Mtw3q1JH5ai-70Y7R9UgBfFrvQ7sfwr0euhm_uvChLVhalfXI9akWjnMmENr5WRTblAvUYvSNST5SpzxU5T5bJfhWVXEYPO4eMwZHQbbiIx7NwYj2DTC3s)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
