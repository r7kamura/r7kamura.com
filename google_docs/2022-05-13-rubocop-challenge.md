---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/0QtzvXzQPO2XVzhwkK4k_8UAsx5QKWfQyRrvB4YwNx3pHgrt6nEByniBf66zpkm4DGdeCu9QcV5vGz4ttdk9P2TStmlt1PSfGSezl_9b5Oqs1aZlI2XXokdwsPtBi-rCmgxlFKBMwaZfNc7nKw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/VqHsgOoX2Kt8HqHTBo2bMk9DMzpo9wgEZGNyfrVRy0qBMvJCx5Xc1wrwuJU9JUesqY1ZiMFVkGxfTZq0eKuaFaNPeCyNNhvIhlIgNso4vc3pVI-ZYup8eB2w0J5nXrkPEME5-fei3KJB_lMArA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/vXr4GLRdKLWwXHRXiSMQmmAb4gg6FAnVxQKZ13-U3SboVVuVhFHPz7sbOuxnvKHMJyytOwam5LqH291qOZ2lAPsr9Z9NagapkhlxZ9Inlj2po4Jsm_TYGXNzhwMNEh4h3CBvDZLpevczFsS6vA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
