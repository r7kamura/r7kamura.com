---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/T6apKC_6Uf4zA3VKgAgcA1GWzW8oHApMhcweDTpTK3nYXcuUTuj5KlJq4xva6J01rJU-Tic3WMYnRBMkIe_yEwm_ejbPJx1KpyjpoPA_A3bQIBrdqUefS-_TPrJaMtBBPKF3G4Qn5eGIugCdG92rSyu-lvLiTCH4djtUXGjqN9JY7uDyowHpJUODkUIz)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Zw5CaN5jZ_vz6ew_FpYL4b84G8vKv8e0qPUdIl80GvYLZPh8pQoN2V6dnRbIf3G2rHkJl9gnRyzhGkQU6pybXEYHroPbPsG2JBz865wBF17bW8pSoNYmpMgYp76rJ91h8LIRKIm5p6iqrmSVnuthPZGa9Y1l8NW4ps0a-9j9zoGRlZVqQpH_uOEQDJRQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Mt1my1W23yareFsThbdmIVqcJzk77WnywW-_4pSClykozyV40Kgkk1MFfVFV7Ti3Ovb2IWOMZEFv0ok98SN5gJf6O6LYkQ2NxfzBJfIdBueLxw9M8HjhsXlcpslPRmnVvZwZ2Uiogkzyi02paAV1qK4uCwnij0qaONij8rJvFY0cpRUy7E6bI1cEIC1W)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
