---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/xRbdStCPtDt0mopOtHmRr5j0dMVtD16kq_4h6V04AnWLw1GVh17PWzdcQ21uGublFAbhmcoOm0KZpyox57qUiP22wCCGVIo9TA5-rrna0S3hW0mysGv6VcD0BBLSZeSX2IEQox6CcBVVdMKEVQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/bShg7T42CP_zz0I5aWjLAyF1u6gob1vkW9chkY-fgvNw2LFNcMdW0DE1UO1WNOQ98861bUknkUVt2TG-zQVWsJpoeYRB8P8FRAbklQm8WjIkvzdknBv6-gVdSm--GVusiDMUkude2IWxEacewA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/O0bdS-AmEr6epsqzJUZPxDLwxyzxJEwQlyZKELLF7bYo9h7-sIKZlLtaKjoZtEUnwvwljNl5DVvB_5P93drrvsLfxLm-2ay9j0A6zbbrmn7A3CxMhHGd20C2x7L311hs-cdT_K2S2RdlCul7_A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
