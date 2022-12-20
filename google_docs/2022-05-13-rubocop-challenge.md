---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/8LwG9LwErPmN3Mp9Kwb-qYUwKffeconxvuhZ3lMIoJ3kPKcPkjIR81r7gHWuEs9IEKRkpU1YUf2Lh30I84N-T2yZfHZm-N73iCidH3iZRodGKdLSDE_3BBj9P1NyXh-oq_GV3ld_AIu8eHFyoX9SzQ8hylWGf3lX6XkZIkTGwcuF0RCDxfZvNS-NP0c7)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/Xe8OQGxVZ2tFolpEpcl8nRrzJJNe4o41WXSVP2m0V3U_2e5wUfOi0sqpuaC2Do64dhliyT28aMPIV31D60ZaiJkxEXLxcgMEOr4b_mOXYzHF9Fftx5Ev-WbAJAUb0o9Hetji10QAMD2rLnH3D2x2imQeGmvzDPSZ8sLtQmaKdf-MLrzgqqqJtJaFzlLl)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/VbRk8D3NgfCxtc3g6OiAu_Qgki7BLUXi-512fTXfdYcfbn32CoparXCUegnhuIrv1StWPSNEXF6mEjkHl7TBpaL8UkY-87tX6myNr2DE7cumuQEsMJ6deY7V0LMnxzwGjNm2HImgZSq3L434AtRDssxoKFXkV0oCef9_3_zEwunstxlnKAcWKAcdeoky)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
