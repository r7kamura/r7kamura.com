---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/9L_dhBgchIuUflpwdUs8GQYjFEHHtrNO_PgIayShC3WLqKVb418hHT7R5jkNw-8sIYh_TyeLVf66kb52EcBorlcA5Z74j5Mr-56rijM1_8mEZbiNRddbXcuXgd68G5Fbbsxcl1GqLQ13fXO4ang2DA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/B1rXjpzLhQwrIjdkl8LLZABUUjyh8WoAV3aYERXtqJMhRHu6vDaXL0crbvc7UTZXwZmvcRVcNuBjf-mhavAoIEQGeSKzH76CVePsC9g5PxP1SmWzw00KI9ZujoSEvNNPCbRix1VL_yHdcPLFW3L2hw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/0CTFvosGzKiW3GhCOmf8V8UFnpKucuVvjIiH2rRm809ESXdRElUL5-8qkkPgT8gQnNiq7YO5ArBfRsx8P-olGUIAWasLdyV4w-zof6IQIF3P47Gz3lWr0z1iOtmBDnMgeG_xs5CO7qze9lXeqhfYpQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
