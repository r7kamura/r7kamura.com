---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Rj90AgIrnfoeEjRsoAKwtc152u3GnlyrbmGTQUsZKTZi3sngcPYwyX7E8OLZJ0gybO6UHY5OEuSFdeBF49j557MRZ25pmbTP1fGVR13vdvs4GJCF0z9Co6YoDyhIUoZOnN-J0XWUAoRHuDANR7F9UUyPS5KUvb_RfGLRkg7BJ_r7MXFbI-Irboko)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/kcnoAgRTV69Em0gK4ZfXYtsdiO4FEfTU8ZTaNdszvOENYkOatfTRxhdt2R96bOWnCeDw2SgZemZeRSmQAxRcsrM9p1FhXVnmMdUPH-1BbFubnBrOgxN2mgNmUdU0wAidyOLxjVfN2VCWccTKysog96bg8UTRpYnRh1zRlJiPFoBZKy_VgNHyuWyl)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/FBw9rn4CI1hp2z9YACot5JjQFo8DDUFWK5OtHN7-fg1bO__GKA5T2djcfQrylqNz42sWtZDGqoTV3a_JZwWT2-vWVu7EcrUqs46PC1Wg9-mlAWHYVD3m4eF3EiSobhRUT3OvPfx1scOOLzJpGM-9HwiL3ZS2UpA2GBMISRhYzXYcAwojJsi_57m-)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
