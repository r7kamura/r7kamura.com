---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/0Nayo4h6JR8jpN7lnGWJnXtoAAstiVLfavdXTsCkI-43R5Gj1R_sh5lDWtJvT7_b451zkipQN9yLArMQQ-qf1v6SLGF-bWOwTCqmPNWAckaI3qsXb4lgXfWLJUrlkbOe7sS3SLvQqKKpkuEIp2Rg3JL4-9WK2HlrX0DOvw605CEKCL3OKyri_hrk)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/dbN0k2WZxbKOVIf4ewR40W4qBBRAS8RduHsetZ2Ip7Uy57fvdUXTynZoJ39euTmYU1orp_MlcPEAtUb_mqqMNw1nWoFHiW8UxPqavtWg9kl_sOYQetROyM-XdTxaasa8J6fw10KgO-YLckl_gfZ23Ji6EV9IOmIybsSMF0SD52VQVDydy8EB4idH)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/W81h4Zb8UlYx2mfTuKWvrGk7hOPvMQvhYHkZSS2nGAdG7snrc7FVIqUA6VZwAU6_GSsNLjgHpC6igsIcJbnIePn9J2rnFpSYi4eExqr7kbTavtdBBQQm0O2Fxr6VAv8K_HYXVnMQfBfB59DhVcdp2eB0x5xwdHgkgSoxxF_bCcJfJyZiDprrKfmC)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
