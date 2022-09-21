---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/cNt-8bWLjAQd9fIqZO5dRY44bgZOQ_TkW5s-MQjgDz6zc8jRFZtVYmA1Prmg02VcyGBs9WVCqEAsTzzKpwc4mC5YCcscqg4vq_8JIeVTc5Gd-qTpe4LUaUvqOldVAWGdD82HiNeakT-2U0LVKqMtUrqMrA0UXdvfFLDrkrCC9x_mL6jjGPtTqEmj)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/ToCaVuJpgajEpkXL0w77ySPjW2ym_aq2vnfsU1hh0sdjMMRfUd3aLzIE66aLNNNJ6leQO2NRh81IqVmtQQbSVIjiQiSqkrtUriMZVAysgATwgsImU45cyVSKz0VfOmk1haq5pZLWDtle9Gc1ElnPbdPFKFgWENQuV8n-e3tyoSsTZa7EKk2F_1yN)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/SDAQvss9Q9ZqPhxqFJhYCa4WTpZmQOYldDiKG7B89HIxvtwfOjwATYfs21hZv4oftUzt9UQXXieismL0TK_ZCa_-FwNxGbKnhhtu92yvAIR_nFOMT5N8nVs65tZoir_jV66nj6y9z7YhIJO_5aRTfsACkI359Pd0vNmMjJOo1VOk5seRst5Nl-Wk)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
