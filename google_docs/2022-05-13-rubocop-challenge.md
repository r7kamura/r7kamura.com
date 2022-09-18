---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/mSbtDpFKrfRD2RavaLtIVhQGBRqpeMyKzAPnCP19C9KSvp9P5Wk-8mHFh8KUUvLyqNX6i7aqh1mR2glZeu0lbDVeuO3-YBmJPqW9wb_7qOQ2_PGmoopAX4WvXYitUFQGkcStT85b5U3tmaaAryFhS6XcSUEg-UaftN8asg9zXAf54x76ylCofbRu)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/NZgkjENt4IHEuOaYJnChpbrrQsOkqg5FY3DvMBvR8ApvwSeevW-XqD-j2BOhjMT6gKrHWa8pwsfDdWU9MYFxrPt0BCmNWL7pLqWuVulg-pEkjilDvxsEkaRVPJki9sivyvam0d31ext_dAhpmgOBdzUsatQdxaIE6GYl7A41CM1Q08uFYUWIgKNh)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/vYemsbcdPuFy-YFufQt4vauoVUeuue447YrzZtEMIcGR_yYbiVjkYFjeIOxBQOxFVhunySVs4CFmgtDQv-vtJOG1yWNK37S8pJZmVd1S9SWb2qJqvMdFtP5r_RiWQilbq9m2VoeJxa5sAxSca-SRyUeELnvfD6fiueU9v1fM3Z4LsbpPJqG2TMVp)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
