---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/abdmaGYsrqk4EMhoIHrRUM1LDG5CL8yAZKyrsQwspjS4XAWuHGlXYHyeZu09SSMFSZiwRJmluCo3OWlyDtyL-LZitcNFK2relA2A2dcWpoPz2N2K6ABTiOvVhBGb-6YOkwdJcrW41eXh8tONLPnDKw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Ycx8hW7clWQH3QvMhajWWoh-DYJOHTw1oOKyrDQZcQkYw90j2I6WVfWD4fUIP5AzIqiwhl7Ls74DR3FJfZWXP4sPBL_XEVp9u5iaa8ym1lVcRIjHn5EmkoswvmKwm28n0WbqAiMkuyxMR9rwTEKc1Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/sY-czWsgfo8ggW-lwA_XTcqFY97a6KMMIyq7_CxnOa3R56wIpaGv3SdFdtv8SGGRXGUM5IXjtT9a4x7RLPMNCOu8jdYKsyoJEsodzzqIbOoEQrjP1eWMy_vDfoNvkdBLCB5m3pSQrDO88WwvclATJg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
