---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/q6GsdSnOXe_4we19FSOXVjAzZWkdkN6cI9YJNqkDSnMlcwqqQmRrcF4dEbQZM08KEvHEhtMK97kFRRRZKloOyBWLT3ZAiGkyTkMRbdvETrCYzgv879m_04qXN3iUeQucx9qXrDMYBknIlYxyNA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/1bXLsqE2_ThFs_YTeBDh8Yesmkaiq70-Zy5-k9krw1hPVJmdAIOQNP_wU8bUXDBeUqGhZS5W74moPKaa9-y_e_cj0Pzu3iOwLF4N_-YNEjocaBsAevGlECOQdRusRH6o1ttwyHlJm0IG8BnBMg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/6dW-25COg3BtaNQwkALx_UqOMetuNC69_JJNxAZ3c4G3mP7R4gXykrC-vp6rX6RGFJwjjnfOzcKoiI917TIZmWDkmeG2mhssucmpx7BNNQHxr6lqm_zra5qtTNgLs-3li5aOB5va9r5wqafPzQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
