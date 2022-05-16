---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/LjTV-NR9Q5klbQHSe6-HjRXv_yBHWRq4Sxp5A3YNLm5kyk6aaZnNeaNIz8-WjglwknCmkCG-EzbPas7p3K282fki7nViV1gfRtw01oVvByXDHUTJuyFQldYOK-wVi-B4ZLXfH_egqsuhjc1xBQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/4wQjzwqBn-0vbscWORByEl20BHLGPMlYPBcg6_vUXCV0LbaQYdxL54zvv9EX4aRzSI9o3dxwlD2St1VOJYbip1Hc5uMK_illupz3CPWBYe9DdJv-D4tlescgBH2NA07b1FZQovO-qtYWKTgDCQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/5gpMVhVA1bQdNK6atjVKEDsnyAHW3u_BD17DzFz4rz3NETArviyhE7a2apu8aEF3Wxar0OZXeNgvzypq0X0vAc8oZOuYSKP23UwED52d6BQKZh6gotaT7pZkQS3MsBc1WiHYdQwrZmbgKRwZoQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
