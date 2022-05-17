---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/jXrzl5InkJUBkCR9b2j39XGNUD9IPN_cUwFPVSF_A59MCnlC1la1wqJFiRh35VzU0nYQdU15JIhOFnlT_ySr9SZVgX8lMHeRIONg0KWjRGHRsZMxlq2vYZKn2ycfj1Gnnz9ZQyk_LER7CbmWhg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/gcngmyKXvdlPXH5y53XDjXaxrMvNMD8gEJSWoYL7mcTF3gayfe_vZAIHzqBKCmEY4UsLauQ_DhXHaVpWF6EhoZRzjiTI8M0UFA9tnjXMzSEBT30mFhkIFGpsLGFdXqffuTjUCBQ2b4b9I_DEJg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/7ELVlrEkOETDItqGWo8KNRfJjk5P2l2kA2RrOFEmUbYZJhlZX3Dhx_ynMNxGfGM1e__UyP6UP9rFT1qSgVfbnJPvV1V0TRKvPUkmR1s-hvCis9vOCDb-1pFHlrdqZDVoPtgludAy7qNXvzr7mQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
