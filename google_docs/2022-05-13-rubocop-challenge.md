---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/hjybU9ruwWJJOGC8aD80xCWnl3KP8OEfdkqPjMeeuj2AesDH28Fyw03ptH8Unca6RfZW53xlrWVuqJIontCBu0cwrU010gwDSxS7CdWYe5ed6wI26nxMvIi-Zvt4RAVkFEkRF8z6hei6Y3N9a8bA3pKNBRArHcGzZU5o8hzqAVOoCBG-BPo68Jby)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/ffBfOwH-RsAKLdlGo_WTAWCSBOGscTD6q-OKVhbH-a79euJLdcsVm-Ngo5K-dpLQRIoJsrJwMkxGHQzUIEeg1sQlZkf_hsOkbYPtyrzXzQ4BKxqvANAa8maeLFF2tI_uw-SNlGOC3d0SpnSSMhhyg_k70ecrzhPiH-yyw26H-DEswRkqIRFzpqI0)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Ksz26yzfKXXWQ-g-C6hBcRMNpVrrrtNQzEeQ2BxGKM42NPguC7awgFeb09cGF_YZIocPZC8RWfIN38xa641VRG94nlvAUPxd06htM8HhC7C2PGM8s1bks7urLuRhWCuHxbpF60cx4y2dOe0GlcgT1aU3QBJ0YIlKX3SwPUtyNwOgPZsRmm0JlPeI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
