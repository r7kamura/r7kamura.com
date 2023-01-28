---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/UGi8_MAXmYk3Ml8ajHmgqyftseQZzuNxIIfi3-PjMOBZYbKWNA1qorIW6aBJZeXDalHmd2RN3F1S4SqrJXQ9Aa8M7BVyX82hT07fMh9ReS14JkkODb7swXXHzv9G0WMCMYhwobvlSZRFnQ3ua0rUyymzESNnG9GJ3Ws7mROGhyhu3eykGuH0PuuFVRNn)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/L4WJSz8IRoQuhkL5acREoL4q3zu2TkxQJ-irQOqoJV-mR8BBFHVfgH3sgNxVEsA2i-dwYH04RUdatdUzA3aJVafuUyhjtgA-qI9yjsi84RGxxqdHHCj47LFS1XgzA_gT1p2Czk2CQIa-lrZ7M8OWqZEbWniJznA1RWBGSbGojWlyB9ZL-BgkYUAJbGOT)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/8y4CgVvILGeF8Pgt5DMW9CPcHi9mP-C3uKG3urUDTvpz_Iaz-T0DKcZQQ47UVTEYk-d2dWDVixivpy-mOAaoWLGZ2raqEVKyixHykardUFG-g5Np0SYJYxDMuFtePNtuo-S0asVpL-2KBw8lB2K-3lVMIkq63Di72g4vU6XI6d0v3YrBymZQpu0zFESW)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
