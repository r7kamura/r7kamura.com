---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/zQ9OFnfu9n8rQk2XE-86yeNJcApfQ82E_nuabpc3T7s-MAo-xoDqpU9up7Sbkpup-S14MXRoSeH6z5jeSPZjLmYm7gE1alh3Rx259TjK8O75a6e8jFFK5xGWRil0lqFbJHi9mlvXDxoFxpY-RYECmQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/ZwKR8S3QSYauySrMac0sau9FjGNaL3Fp09On0JohhVxaBKaed_T4lfU9bZf9G8PNEFUpnfkXLR0wv1BmMGg0cs4iqGIQMjd-Z2Hy9JIX55VwIx_zwoR2LetMv0XF4tvt-AG2cutJUDUw78o_m6q4qw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/zBTZhGGLCJ_ni7acOoGIQN4J2h7fJK7_IdhlQ2gcjDr_odHBR0j-Zeryh5aU-m7HaNAFNhHmR1CEPOrT8hptB0_o2cquhq48KnKswFFx0diFeVwQO-hgdRILy6QtKDN6177lpLHdQ5a78n0FzTzxEQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
