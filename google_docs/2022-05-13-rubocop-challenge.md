---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/cQ7Ug5J9ZJ1fOlJ5WZVHQRJCIA22se8_wR6R6fYDJSKkW70a8u3FEM2cCjS52cZ0LlfCCC2fJ4bVi0jRJqE9OulB-gFFL_wfrZX372f-tJ36fVHPwgkIYy6YbtbAixC5Smx_aSRCuHyGlYjXFA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/jx9ePx7VTNrIjs2JkW-syfbV3NiIFAv4P7SZLAXjjp7T8lH_P8J5eiw2ZO0-UYC4ol_1Brt31tF7VEIgPuvoghTcD1G6XnjcCbwRCgquDd225YvULRWdXmnUmtD4Xd1rRcoKM0QFxFPvd7TrRQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/c_VyoYH2BGYzy8ThoCwlafK9TLAkYZ0XNtaefVVRSB_fQytrfGiVvDY2kMfnfcheeT59htJg4qkKn5d7jBHNoooA2JHOfsmyjDQQ-I5GtT_Cx0OWFCuWWXHt_W5Gg7fFo9vHC6kewQTCkX7FGQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
