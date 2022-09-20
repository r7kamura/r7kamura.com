---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/VRTP5lGBKVrz-1dqT_0BY0pu9O5yRQtMlsJSkx0EPs3UU80qdeTRSo9iyM297jGYfmfcekxrSq3-XPpK4eHMWQFATizjMcyXfsrd9inA567tMpX98FPg64Y0iIrewQMHHNZt2k_AE-LaFYnm3MMyye597KuJctS8Ri2LsQk7so72_i1yX4GoWIym)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/-UCj2HjzyyQTQiP_EV01l3GXnqaF4geYruevSPq6mXpAYEJyfVc0OX73tBT4Fwd4d9nHlywHUuEu80oT7V__3Sg9nbVTgjrYk_pyiIFEgsRkhDIdOIjTff1uUlq4vTo1GQb7kmCKYAa58ZOWlynBHirEVLfiXbtCSTw2g88-t8oUu52ICI5RIwED)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/klK1sTguogu7kuHjAeTpMIOkftgCeBDdgMO2408Yo4AX8rGgEV8DjdtJtyCpO4-QTqJ0aNo7iao22JGJxNl96N-7rF6WIw4KYQMN7jqkuH3o7ujWrct2uZLsR_de2rBybxIv8t5RynKR9C7lWdq9F52jw2Sr4M2eu4PZ9QBiZwH1Tv96GNl5TLKT)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
