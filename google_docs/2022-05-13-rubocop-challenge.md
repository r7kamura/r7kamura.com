---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/uaEx3BTHDjO8sWhrDE9IeLYhRzQrEbGN8Dw3g1SVNc-DhAbFommdmiNOjZ-OAYAqEDNPGY45NYXSBM8itjN-RcEiVyqMRDClkk1gIASKBmY_hR-K-GJhqu3L0RQdTCnDUkTLOg7UScwiksuAIJUyK1lRI6OtNn2gd3FuO4EFxTrWqvjU-NaYqcVW)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/0kjOFF1AkD55uAYIv-hM_5AAg_g4Rwi46ZKmup-FuZc3HGhD_Iq8-1rjBQfNdhPqyIhqEcjhjT0-1pUhzv7-jnzwfMpgX0TG7hEKARKd5aQoIB4DQN9VZFwVe4Xt93fc7-4OuUEbSkYULgejrIiXc0kGzwWViNAyCWEDJJA9S-iNRL99X4KiVVnP)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/C5bScDfUrvNUmt32ua-zUSjDC6bbXRdnAJjKRZSiaQQkEg7xhsOhKa62TCSf5L8AQoVRDABUZiWvwNnZwK56NQEDKl9A-uzi9Hq-WyJhlDzK6fK4jbLVT_JVR4jru8BSBVG_CblVFxbvjZdAYjFMi2CPZrLZctz9TKIv2zQr8R4Lj66vA-5DTERa)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
