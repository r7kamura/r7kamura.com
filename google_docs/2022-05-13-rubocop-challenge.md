---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/l-v_9jmlHRxvxlWfVNfSrKh18GGmnMP3Rd-7Hya0nrIhWso72lZKYb2AD73MeoRTlM0QyfldnydMDiTQGqNNGllDRqnOQy8rOO1ZFUxyaHuz1ARMgo70pNHU2LU5YOdq2XmMghDvk8fRv1MHXw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/RoxIcZVxO4oMYCFlWJuTRhCCNzlPOclOfF81i7LMIGQ4dmU7W_K-ATRcToLc51vyGMZJU_lDFjO_jYuacoogQ29lZ6hfVtTcEDnZSSrZwaY5pYfEtlPTRorMiHINe4kyFZ6R1Ivsd1z2BFF4sA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/bWRMRPe6touisV98efj8_YwWrQgS28oWlPyU1qiooSkgGjRscnZTtimj3JUNboKguLKEEwxX1qNGkkTC6G6UBDuCWGJ6G-Rn6nyEsOsQD9tCZeT-5CHbbWqnFvDBCaAetwgaGFpUTX79MrUC8w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
