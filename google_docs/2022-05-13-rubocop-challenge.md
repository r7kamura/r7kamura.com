---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/WKJyFyZaddlpbjXO9171NPQXxJYQLV99WGSoT_2JKHh5vDPefxtLlQbUIn6f7bfk4SX3-Ggw-BYXf0wnvbqzXM4Vs7kxnuNDFtT_Wgy1kS4kcrCL7rYU97HbQ9tx2RPJegtVCUV7gHCGZL5eniMv37Fx9IFN1F-8XFYQVxrZMicBKYl2erMcXJVg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/DxlRqisU2eHxgn99q3Q32J7396GgJTP8XKwbGC0Mybs4B_nOu9KS7npJlNJXClogCXYYxPQy25kSQJirpYt6Eu3782jpHdkJ0zxe1BkP1ZmUmfxc-i7XAHatlLh8RYR8Z-SJ5zuSy83eQCDYHcDVISdo-dwVr7VUtbYHzT96oMkBl8gWp2uu_H2t)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/HNJaQRhtkNTZJXy6hmV9Tr6LCCHcX2z3prki2LnYHujmuWX-YRfEc6gdUuNs3OVeVz_S-mtBo8eO1-dRlDfpH1HXso8WqUEis39dyMUGKWlK5j7Q3s78Re016H_8Vw04SW5yhyP58OQb5_GUryZ2fnL2m2vcke-Ri8L71JXC3Nm0mJadGA50LhyH)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
