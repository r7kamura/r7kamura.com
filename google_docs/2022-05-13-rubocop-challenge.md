---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/ac0tReGbjgj2hUQ72tCkwQrKWAllWyXo3anNcqDKZfvOqWk54etQJAW_-BeyVbGLsWZPQyqX6cuC7CB6Kpd_sje7PZh--JPd496sG1m7GfOOed4GFEiouDlxzpIC-R8MDUT2w36ZY0grtIGgLmAotjBsjTC1rJDK1SWmUSDjRhl9ZpdHBQ9RH-ICN56d)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Et29CnFeovln_kD1MVeWi1za0RWhONuLVQ5fEtmbx7X4K_Z5N_mvGN6t83y_HhOX6Ek1jyx9vklO6YD_Un6Ax6nxJMhlhOFGQhrucKaeY5MBGPqVTxxJGHTalqIc8lvYCJgaqfinn6Ow7mOwqPZVwSYbQPzY6IXQVqKJyjIr-T3J6BopicxBgsuAfc8x)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/U8NlDeGOnm5oqxerigCwMgfyS_WB3Mts-fcnNonXRRIThPs-m4qEOoWR6Ae-GQX66GFRaXFk7EcmpOzC5zrKg8Q-3gf0e8AL_IT5qwgiMsPRbjZ799TAZIQvUqDG_wE0oWokTPWhA0L3w6pZYgN07Km9PUTYAs-Cazk8tAyrVjZDCa1vPKq4kt-ncjau)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
