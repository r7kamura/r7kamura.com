---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/UNLmIqxJ6j36Tr0FYZnjZV7jnvS1-OMAz6zij3XfLm5IrVT1kksQn6C5-JLbevjfU5uaX4LnoflAIbWTvUIfQ9rpkDfPHMnUg-2CdfXLf1cZAP1aBKmI_rNsUltSh3kEqWhnI0XalwA6C89oAUXMTA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/eu92lewrtRfwuRhMNY8sNoGPltmxo43GNpEm19IDPG11y_hjE9vZP1CAu45Bn5IlZmiISk_5heygi76a-CnKxoVqSGcmOXKWTnrBzpntcgez_HiyihfCvEKZPdqFOINmnSC0F57CjmACtmOpflIk0A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/aR6G3mTggZjF4J8PHD3zGhxkxFkkw957BGbwUYb4-7StLpXLNcv1Nr7ON8SsaZd0foNDF3aYSF56QLTzsE4T451qv0bi08Np9gw6YeUTxC_iqSzE9IVH8F5VQp8qSBT9ycFtbQLXMGOga9SfUjBwTA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
