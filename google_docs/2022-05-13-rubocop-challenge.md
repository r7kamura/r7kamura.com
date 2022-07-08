---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/mSTkyKm5HsQ2b1y7VLZWsC-SaTqGGoCPhOj4w933pCDQdCvU7u3_gYdsyCocQoV56VbxPQtYrB7opbSrvvuuA7aAhf3DD9BtYEZa2StomqgoUgtu2NWsT2VIRaf0WKh0AF3eHrXOovBTZyG6EA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/ylOdGkWbfQyQe3OC0PpxZdua0RbHfPcZvaX7TcV7aNP_yhq3ga2shEZlb8EP3yDc39lgirfEWXiGftBlc3B_ovD7ouguIAh5uuEDGxq3GJm8JBrclaNzgauB_EWhpUwfhdFsvFx11x6iRkE7FQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/dO94XdktZ9pz9x4yIMf0Q57F8heHmAofZMVfn7gSLZkgY5GwZKLy3VdHwmqM-oVM-Eh8CPDom8ze1r4JnAw5a0McxVVlEgP1YyEMdQ--fh9OX9FgNLJYIKoNaNBQ1A0bJZx-5Jdn7mBpeeIW-g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
