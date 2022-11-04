---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/lx3NIATVzjNPiFc1c-qIgTh4wVcdyPM0CgOgftkKuz4W8_JPPKE1eY1uuqy7kMdjMfX_3rLsh5pcqebHQGgSflCS2JxVV1o-zOiN1W1xslTm7hQLDp-rWJZ4i_3qPnyYobaVZbLfrk60-bpHvxQrGw7gFT1FjFlEhDawU72DbBjbfzXtGsFNu9JdEwiK)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/oX_X-RPggEL1KuzNNoX6oHEX5T1-tFYcoGX_HOV3iOn53jaQ1gutlMenaaJveoAngCJN6DcVUopTp0nv_JFjfz_i1el65hceX3BY3d727EhqTSDSZuv54uARDDwWmOmuNNfb_b6QwHhs-tM4KixKbQ4EAboumfj-l0JFXHkMYPV_lGgmu5etLzmITeqM)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/ilmFVyORNSe3xV-__dOIj7hX3MRh8hg4s2mgOXzassQwWiwdSSgaTK2ko85I4b4AvZYiYcimopvt0VHSx6yGCgce1B4ncaUSHcZO18wzKzTjyuW9O2Dlwz7cgJQGL0S6o-kh8hBcQ0igPn5AoBC0nJz9VIsS4plV5JrQAvfEdkwMqJrCEzKPE3vLIZ9b)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
