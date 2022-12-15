---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/2lbFq_TEnaRE5mYkMihf3kDX0STyFss72XAdceyWgNoILkRKFuO1cOLB0zZrs1o6P-5AHNjBbH6PJrk1uIEN7SBt0sHKdUH6N8c1vJF2BIwY-VRLeE6Sc6o655MIVxko5pJWnKtyCt_voDEXcBYClD4j5M0xgtH-6B2FOIWPZRrHjU4HJP-nEUnHhBpZ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/4hXoZYj68l2PLWCXFOqVBajiPUWZWu-3gBBYAZV9-DltbnpqaBqFdoT_F6tObKimmt0DyOkfENn3boUTYs9iZfrZ0uu8W0rnaUZwNZ24Na4OnUrgNY7o-rN1hKSWTsjxFP5h-ydOAX5mIkmWjsEyfbbtVhP8zwGY5vepevZGlZeokDnwzCbBHErwIBoe)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/gS8354MuxTci2yJHYt5UqQABNHZx5-6wrhUAU9mYrgpEbd055NnX2DvUvTYJ0UDHHrNp5ss_WpHegjo_yyjG_OXRxqHO2uxGdiXuU1BQp4dCOS1ZI_yF1VGVccaPfmNOwWgjdJX72KmpLIb3GbE8OyZmQ4Gmrf49Zwvsfy6uDjHlAmNEZGUDsdWxqc7g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
