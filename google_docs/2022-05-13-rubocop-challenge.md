---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/aXVajC-jlWe6xKT5gPwqE5-tRvu-OUCE3KpVJzFHZBl15HFZ0vu8vSu9smLe9hGmmkT_dd1VUVZVWYMzlfOQ8p0WMyzjh8d7sOcr0_hD3Dn6I0dcPfqFY5b-M3enN1bBOeFV_WW3DcEj0TcRp-UT0TOlYAyfdlGpIcF4gVGtYX6stp9YgcKqdYKx)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/YECvCb8I419FE3Pza1eUCZSaZfJojXsaer1zd4BztqVp0rKrJrAllyllzqAHbDhNlB7aW9hMQ7Q-nrw8IE3yz0T2RALLfpfew5aUkYpt9G1ZMahRZIhknfvRoaAH_5gIiVNOxhRdcf1wPBhLkTCSWgYjNB1ifnoucnvzcK4yZErur93yv46_OiVb)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/m--AHOotsCbhnN-qMn8uCdGrz4xOEe2dx-hQy_tcraER-f6neIa-ulSmX8dV2zqrq26u0hFXBQLjHAi0IONrGX6qgkb-jckznPLyHWnGSf6lcfiwq8wqlnOfK956W7Qe32GnVLzGm2l5sRUKHoUKEg65y7Qw7xEzEPCUQXk8LdEKOH0TYI0MkIGA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
