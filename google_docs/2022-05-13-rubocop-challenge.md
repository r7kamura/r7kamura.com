---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/zAVeGb_eFoLNiZRC4J54ccM54Eboolk5-8tpVm2Dt_2vIAOymljprrufeT1x-YUeeEEGP5148dEm62F9b9Vm8orN-_Me9PsCiVz0L5Z7-rcC712ocu2XyYET91LPDysxIqEImv7pt4AtkFxSqtDlsQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/l_-PzIqV9JCsBqFDDvHA85gK5Ju5K5rZoZrc0F3O4QyRMplf43FnpZvZ9WnErzgCaz7Y88DeKLBDToC0Yk5zxdX4X7sXOC-aki0Rt35_9BISamenq5mwE4LkWfFURk-CcHY9IZIvRFWSgEAgStximg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/uCwhslV4zD-TMATTBvDIDG8hAplh_USohkrutlESjBeDNEXbbJ_XIl_veJ7TchRnlSaZxpW6TUSgx9l_l95cdtcvRXwsLuJhNetwuM4ME3EISCQ4DwWvE-2lYFxDaM8idarZC9reteTj6wl9BZwg8A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
