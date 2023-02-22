---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/WWTig55aRq3ReDii9AqrK1TsC7Or7_IJRKqopEpRCvtFVGHshi3juvnx5kkcqRUdPUyaxaYFb7m1x2AO_sGcdWAGY0udQ4zWpk_UGYB3siDp5otMrO9EJFR7GwYcww28isJGoFCZz5W2jkvxKKtMfg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Fuh95DndgZcXmIiOCZAGktf1uDbW0oRHaOESKzMy2Bo1DzjcjY6gu4sDM8Bk9ocFT3yF3l2fL3iRRtW90_H3OK-CXVCWt-_emq6Q05GCUtk1jWbV5btRVggkDhSSpLHZ2Fcc_zFdTmM2m7iLIaInNg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/DU2h1h60lGdxWCqvvXrF0feZTKUStWcoToG12wVtZnRA0rruTKZ3hJ3aw95K-SGvTkGhk_n9CnqI7u6hlPKbrrnJeokdzOt2fQmMDyeGe97bhvPB4tcj9w5VPC8j6fyCosTlZAZKp8QaDHf1euxlRA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
