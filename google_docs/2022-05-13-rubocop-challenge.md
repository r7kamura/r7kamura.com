---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/JGOqrmqP8AVgeCO8f9vEY-_285WmLHoi-YKXGK4PTj2XR2E5GfCLcyn3TxbbuHwylG5WIuj38_58fleNRFJAP_-8EqUr5g_PkvqEPZVc_f8TCRnTd9rgrB8mtPXFkGIPxYjHUQasaRnH5gnb3A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/xgR--I2aIHlH65JuqcbvahF5TL2xkXPRC5PBybUdpcuDGMJbipwykxA-CfKhLaD0qs7R-cbOn_TpAOrf8fUh8vRCM2wWIfGD1GyRQ2TLZ5GUNY_82YBO4B3q6l5rpHHNjyEB3qYTHJ5F6tYVQw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/F27kVmegMbNiPcCVArA8fk1A7fOWk-MTIWjKe7k6kUqoAOhoXuOjBjCLgglPqjdIw6NetR2rjDqaON7D0oHWM6CA4GCVmdpZ0mo_VizvLnJAGY70sOh_B0UsWqPeZermar9n3djAzVr6AX6fzg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
