---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/Mk1Z9_mOGGr88yB_nO_jHWJoyAe1o9mFl5Gd5CN_pLyHUB7t8T4vlXIvxlpdc9_q5yBhtbyNgSSjBt5lZiiNO68d8TTAOe0I05n7OvjeMIVJuojxRmgxTJNugTb0XvNBjOmdbJ834cBGRjacAg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/9hum_vyoUm_nryCL3qt1n6x-J4WlkyxhvIHB-Z3EMQtg0Zu4aczqVeZc_s2Kp-l2bqB0BF_XqUzs4riI4ICaeYK6Y6H0hfGTD9aZmnC569uDEZO7BHR8bmknPSYTOdn-RytqT-Nka0-cRxRVQA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/qkpZwpM3tHXHW3WlMHec_lTJMRyFLCmnWJ6aYTS_fKgelraTyHYQNFTuv3T1dsgGWOlF6BiHIq4vnSHed8XqAN3ZN-eS8YaA6axWKHih4VFA6JEmNYE15tGQuyj55Nta4faIXFOJmrXJ9yDqqw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
