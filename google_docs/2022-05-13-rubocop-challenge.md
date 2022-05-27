---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/Qo1m24_0ZW3v9OmONQu9wE-qIdCSWNZcmqCF6aR0c-FAM7oAUQHFiZD8qkuZ-rWl52923axVI_npeSteIDqOklhKGknc0DaxKgIZn8WXjO73sbaMXy79MLH_2VPd3NeOtbdTvSJVd5jCBsD2mA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/IHxnc3vBV7TXxNXfMPnUWwS3vrMylJtyOCVDh7p7U5ih2aFBJ1qcCZXi6phgBjKbZ9WZQDFg6r-EJEsCs7cEN82UxhH7FDuP3ebiYZC-krJHRrD1b-pMpxiyzoHmRI0qvsATDuk1Fk2tG4ytfA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/IKG0PsT_SAd2ZHFjpFSD140TMGiLNkqy5shHBk2tiMmX04GRIyXTWAhlSSqiUj9hjaMW9NrX7pco-a0HkKTI5aHmqEDtc9mX03mjqpcptC_A_V2r7QlBWl1avKj4AkKf6azC4RDNBTg3HsNIww)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
