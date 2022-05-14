---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/_kqPb4P64Gn-72ykmm3YQqYlWfNoRLkgiAhV67DRu6IHALC1OU2KbqLMiyHDuHrpsSrZASA0aafmFMD4XoMIzfV5XIm_OEKBf1ENAaZCUL4oDQ8lLIzkyESMZW_NATnr2X7iPD3UtJy-jDxeIg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/0xV5Rj6PMxBBCwaSeR85kjLCsjJvrwzOs6P_wfETnTXYeTsYBiwy0FQWfHrxoPBZzOIdvwPKJRPN3nLpBnkm6vk55uGI_82jhcnE7AXqrVqyIULpn7OWmCyNnYsSWd-ikNV24KAAwd46qgCTtA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/6eQGIFRpX-Fn6sPuye-XJ6DPXgGAic1jEAYhC9UD_QVznECTCBl0ejbp0JKJs4WglgFMKHSHSXAHDCmglZZ_g1lmN_XeYuITNPQdj3IOxbaCblFNQcMCIkNf-1ub_zgGIRXakgw8sbHp03bFYA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
