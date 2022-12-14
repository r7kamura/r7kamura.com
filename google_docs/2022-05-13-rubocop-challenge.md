---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/IaKOuenaTDd_fRgmj5qbsuUmqXyiJ3dP3HNn_cE1seDtqPm2VrNvxahLvQVJgE-GViU__uKmFSo9ayJQO4LX__eacvafo7Wsu79EDRjPLsJXe4taHuh4iFHLbmYnCsZWvVDGDThC55-d1SIYCWgLA_JbvY5vGbradflpAQ2oquX39UJicDZUELXM72fz)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/xne_RUExebReztUGxYTdkWWWyP-ThO1q8Q9oV0usv9QsNv4tza1OtND20WviY3K7NycmGO1tIM3WTzNfNPe9kReQsuUGHJ0VQpcavZKfGnr1OtF-Wr4Gs2_PK-KEJt4pbTY_gVzp4mae4kvj_8rh0AVC-o4Va-aZfPrOyLzHIuXAQMFP0J0tYz8d9iCY)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jpwBZb31A1kglnT50fhXzP1xkv7fTF7mnOXiB1KozYMfi0xUxTT8PEfNHP-aDOjdFx_4TKXvr_MVkdDzW8gGTHlwA6O94Jmu8Yh3MGy8THvu1ldmOiPbxm4A8-BdfBAt68Z22KmHL2jM7urmD4ETWiVauLGtGABnDbZt8LTpi_mrLrWVEyUJrsr7uYEL)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
