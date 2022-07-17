---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/n_PLkyE8eHIL-vcFrko8ehOjNqeMo--HI5MwC6g3Y_uc7dgJC4S58wmr53lSDAY5qT1wiII-Y7X_xK5NPSgwCLDFAImAyZlqybdgIsdMXw2L3rzoC3K3tbnFV22RBzTCbiJw4JCIh45at4O25w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/6ma0YBtFO4jhjWvW_xNKqsMBO3o3u6mEy7g_avbzYeDcb8WhgTEo_939bPLlBULDMhrwl317Y4lfxx_9WFcvOP7OplQIuaUhZo71LWqv3gRgGdjKFrIg6Gg6GXklfwsPfkoL5X-jTYrZzknMZQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/SJnvVnmZLExFRnU0C_F6QvSbRt4zI9z8H3muqFHYNNCgD8Nf6LoXghvFChhzY7BxrOjSnFgj7UCLc5o2Ut1QArVc1Xu4saElJ22viCJYYzOS6so0o4-FdypOQSdQO3LDpghbHl7HMu1n2VrwPw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
