---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/oZpnzthXlzOKxYKeLFx0sSNhiJSI9vjtkc7nmryS-QirgdfwGA_rCV1o-hz5b6sD3BUcjxmANYTBUNBZtjrrg19ZLFkYMij63dZe7l9aHYS3g7QCLuLkvPQlHuDSow-s5TRLRFDaiyvMr7MBaIPgNw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/yVO-ojJ-EH32D5D2z1MFNkx1FZCn7xUrFgkr7IMtD1WmypYjradX7VyN8DYWtpU87skr7TGVMsFHrj17zZFdXBhYMcDQJh7-80bOf8_PpT13ywkyVgf9VFOySpMjx_0S_ar0OpcRB3swVN2iLCCeHA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/zeJ23SwT080HaYb585ELyZUzui5dt_fjjy0IxiwaMsWQWeSNrJ79UFcenPFBvRsDonBBknbbbn7SFyrI3prtUesxlrODkOMy4qh-zymx6H1dsjZ4gCKZN7SSAn6RX7ccRSa_lEo2wSF_VkswPj4TWw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
