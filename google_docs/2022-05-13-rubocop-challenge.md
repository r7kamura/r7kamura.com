---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/qO8BNnR_t8m-MOvq7tIJhCH39elt8HOav9mHt1ta_e6pXh83VILjY8l88tuQ6uOtmM9w_ja9j6kp-daIq7du-PK4WlqxjMkyg65UaAQVnuyDHyg7AHHJm1CPxAjCRWoqpy-nlND81DMKAmt0LpAzZBOZHUDDt-pIIMlHz30pxp27H7mooTqKAlcupQyn)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/aeIX5_JU1lxU9QujtA_iHU7m2AGxlkSq3woKpCdX7yc5-peBL3rVisonprnLiLjE4RK7ePKkluvDXHg0xnWjL4T08YcXfMVPrKQ7IcKfcAnlFMMbe-fbIetZmULIJCwCc-whLyY9Yw33xLeEeETUi16l8bhByBkdur2CWZ6ZWBnj1TNWbjQlgF_eBoi5)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/LuJ9mOI6Tg6_Uwr_4vwYAaaJBCFKPhfeMMYHsJNfm3WymMw3zOZEJSa0MupkDLRZ180dM2gkG_B9lNmLXnUSOp6HAgPb0R9UMXoI3MGFFNJDrq9QuboFP-1jOpfCvTn8qp6UkKHbFvVFnsKDlSAZ7Vhfz-ubOzf9Z4Y_yn1vgT4-5l7s3mM7TbfvYpww)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
