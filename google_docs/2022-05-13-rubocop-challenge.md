---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/Og5ld0NU5oIWWIbfrcvhydrSjKDoVrQxiwgJA6yWZF3sgiNx0-75_DkWvs0l9hT0f9AtxOj4nCjlx6PQYxJYCEoJ2mh5SyiTmQmnWwEfVBAhVPua5iu1v5A5N6PgnI59ON8DljWOLLAhoAIsNA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/HIxws2mA7pX1tElg1FO_8ba24yOZmPCOPo2nxoNDgQ6TwE7lfEe5Q04TU45rjUfzeZKNfwPMli64-qB6v5bq4rNwM_SR0FTVJN9YgcuVjJZgVA_JQf5PU9xF-VgtNjxy7iMH3QAwKVpoV8b5oQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/p9ZMbWkMZS8dsOBOysxSmP2zPaqTQB0RoxGa_p_bpYUsft5I5lrMcH-KfOLkowmEdO-Tu--rhcWOF16YL3tcFKac0s2HiSro67SVMJqahpDa_O93FtwaPaQDzmmvLPZNumWIAzrs1igXfvkZiA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
