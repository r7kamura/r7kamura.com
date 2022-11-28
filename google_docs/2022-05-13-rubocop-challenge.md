---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/opB2WzOZQXD0OE6ByKvtVwyrv82w82-TRFDGDcyvf0yFm64llu7z8VovgUFajI3hlS8LWx0hMHZkyeelBsXeTgXM3_qvXR9z4jx8U7lXQuLEJs3v7Zxqrx0XKavEOvAXcthNleiGRKEb9tc87A1Fs9iChQG2XTmU4fhqzdzMxwBYjc3psOIpCK2UUs7f)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/_mHgWi9kQD_2q4iFklU8Fbloml0tmz3JfiIMvJdiKNR4IntgwDvBQTmtqxQoqGCb-zFyhDpCe9AwDLctE2Dj6x-DfRQixG99ygCKkp_c_e9xtzwSJ5iCTmsagjIhM54BFW7GUmyIfilC2BrwE7poPEjGH3AezwAmy4ZEfrJ7olM_xoBQV88cBcFZFTNK)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Y9ue4-9hWOLVekgg3FjnPVtD4Cdf5c_Wn7wGqRgDX1P5S2ab8xkQ21A90UF1Kt1A8gBQq8vAlRGy-bYK_oZOl1NQvellwlnjzeUXi6Jzre2X7lYO7Zvfl7CqqD7Yu1-uOLeR6a9c5oBIlqggcktAe_c1No5iV0CvusmlHvyuXtgkYYyFdLpHixHv92rv)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
