---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/wsEidkYTOndZzu7gxAct5b7oUIpUWqZ6DTenwMo302OJ-q5VkkroGHecHLLVybRHQHNkvFVs9NLl4_ZN_dEnu0ORV2A6Zb7Wp-AmQ-B7WfPrnB7pu3CMDktynGsxXkAl-dYNJBu97LgZOM8vBg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/JQHiMcijzGG8cpcV6iNkRosyn7L_7bkPbV-82o1FMhfhbpUyYVXGZ2YNbfvge-6UHE5xq7573R_r1GiKrqvS1Xv9auXXIkkwjaAcZQlSSa-KXOS7eTc-cc3nlhS-41vzyWnLB0v9Xp0onwEhaA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/aiafCHtaoiiMbVDY7PT_RczRibRAuDt51mGfq7IqSLcHTLL-0E53PidfftRHXaZVGxUjI6HDekhGOzDa6G9sVfvkMBJGcZOq0cmws6GA-LBKwRygybrZE_2e4aev5c1wjzde0rDR8v2U1MZJcQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
