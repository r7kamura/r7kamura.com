---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/I7USxCh4_vZOQlcQKkGg5rQkr2D7ymElVKPXmAgXwAzGB-YEs1oAtXsOSZw3Oj8Hox3fmdVBpC5SI7T5_gbp6EJT1FDwkhgZZwAR2u2mg6Gi4w1ptRf42etTNP3_Icmc5IM2ZGlo-AOgrKzYjA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/OWHB5WuHzZRO8KgExj1L3maai0LtbarLYrexwORGAwAukxtDSphL8hGmRjW0uznqJ3QTAg1NiuYLALQDYk2K4W3NBr0dOz7KkHQ0DDvJN8To5DbSSwXZkNlIgrN_49lqF7WLVqZMHo7MAcFcRA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/WaG98hp8aEY-rkoBVAo2BoblLvpyb6Ee6159-ar5Y-h9SnVFsDIXvvOs-NHvc8qdBAo4wTQlyf6MokiooLKTPx8HOOLEgoazh6RpyW9n85Nm9dsJwoexTy00CbWOe6ybC_A2u8xIbSjOvCYFlA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
