---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/gOfBkrnmH6t3kY4Z6YuJFoSlRz0Z7KlZHJWE8JlWm_pJHOR6i7xyOJ8IIWDVW9UiRXyUimi_VCTLmZluvFjQjRWtdL7SK13esarvu-j5-nKUHyz6RNxnCkSObp7RUJKvitGhY0PppPJ6qkUyxreDeZcyc5YgcZZBHnCLk9myvW4t0FMBjzxMEyUVBITj)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/TcsdUNYHu9SndFSA4drCXheK1oZe_1TseFsT21gPh45qMBsJtYMfHq6GhCCUr8K8ZQ8r8aIsAjjgGiJhRA0d204uSPEJ0UgqybuANu6YYlbqSj3Oe0NAiv8Og7-MzJFRtxrQt8rDb5qV9H0BTqMOpu-lgEnjZY7QMNQvF8sHpEre1yvCV6gabjlhTW_o)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/g25WY03gdseOmUtx8ct4zs2uKH_7-aKi8nj5lvRpPsNPhcBX3vRa--pme5CFWDFKI4DLJ1ZpqRp6TVGvKHMIUdZpTMp3YSH3BnFTuQE84kKMHujdekvnfd2g_1BUAlhXru4z_23JPjRP8kW7RU4PPoQetE7OkN_Kv3Uv-qyN4Y12WSkfBx52vNq1i_EE)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
