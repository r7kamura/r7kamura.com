---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Y0CyiOGNH0wrh7TSrkrsVYPyvGtooXQelUNxZPersL5rludcx8eeV1HD9OlzMCFQjz_Uj3t33nVBNI_7Fl9XUD7NjcORnP42xtS222JdRGaQk6cdiIv38EgzA5tvbLTatruyYmSDnIULau2WDA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/-Nyofbhttn-iUw3qS4lN5_dUE79nDKd5dSQn3UQP6E_e6z2r3L-y9x0yD4ybuq483pqorwee5zEfn4dBFZZ1iTXWdri3EgSZlXkHjYLerrHvI0m8qbzsbaMmiY1iYf0up8tqGm07-UzqmhAyoA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/zXxS7Zd0Bl29J6PQB1UKBaMHdMDDZ307RwvSw7JDREB3REh8t7WEwzgLg_Ty5f7ZB3N9JpN89m6uSEFWqgXumS06w6k6xgVGp8E02V9YbdC1EiPXhaifnB7yMAEQR9apwLRdIvfk8odYVzAkWg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
