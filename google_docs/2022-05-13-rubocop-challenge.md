---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/UBFcUnozdk92183EltHwPg00zH-JDhzWGqPJ0nYgzUEq4TYmDw5Z6ZOnz8U_9UTQvV0tdEgL51-6y-2aAi7fti_EbU-pcisxiXhmWPhbYeeTTlFfnWM54YCzy12zVhJVu1zm_08Sj_M9bJ8LOKhjPzMgUj2RvtTKCkBrmGyLwlRv_VboLXgB81ehBETd)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/YnLsfDIhYrLHUR2Zx6KhM3rtzPn6RYt8JH8KEaWyGaJ4Tk4BdaWUhIvUFif-tEo-93eBUQY4RxWG6PRND00N59EfbWbCAZrwRH0A28vaWQU27G9cMf34HxnZCAU-DFyjk0DzG8APA4JOwHCP9QUgelXe0HJrvG0WwwpZgU_BbxpKWIsAN2Peswrd2JnG)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/qsfn6Hwrv7CbA0u11bZjotY8Q91FPZu-eZDqc1Imyq5hrGQNBGHh7fp63fgWObgSRKml8IPsGBAIZEDm3W3OarC4taAv9lkL2JJaTMoPaxZEo6cUw9hesDtaGp0XtYYaM5Vsy_L__XHcACj7x54QsL5mBmQFAuIKFPMRk98ctmdLfJTDA414X52HIfpI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
