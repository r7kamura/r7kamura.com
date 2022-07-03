---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/RQZg2X19uiFEB0pi4FfIVcmzTOVEX30Xgb4N99vdZWa7umNV8U5m2q8WKH7LtUZh7wWKM8wGwMqBZCML99u6XiSm_Qfy6d1omNEBcnGerTvklQgNAY8hbS-YwLaNY_U1DM92Vn38DxpvshpfrQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/UUVxQW54cPfII8n3mtd5KziiuZhHb4Z6FfCgHPReGmPIheQ2wf9L4tGRB_18w93dJYcs9A64XG3VecSQa57gu2rSD_dTmGyBgGjzJkzhcoBJzlqzdYbBBHfPg8jtzhNPWqaf_HYI_P0jLHsiBg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/oSUqojIXNIfWnQUTYV26xP4rS_IRFxaCMxOvPBsNAyTWBnRN10RoiJ-mfIohALHVTH8z0fyhaEG5tf-7ELjFZ1IVRRCr_kTXN38jydzx5KXBThrGCvTu_2vlHgd1YaDZ4EYMQM_g1tMBgyslrw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
