---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/jdeah-vO0AlRQuMRd0u3h0zG-qSRtUQfVqa4_vb2qwKUpKKOREd2OvukSEI3_m1pImZXOHBuNYtjhMKeXmtliq6F7SAnvDez5zZUgeOnFmUII0CzZ-NU6aC2l4HIviqO7qQyi-2lcgXjE_bJn7oZSQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/x4a5U92ZJaVWYy0bfxavhHlMa0ymJdHzQ4MdP2eRGRjmZmRcuO5gPm2P-gnk4x8eBIN0YXyWlluvPoaJ9V3JzRj3AmtrJWS5Bace1gYXuS1ScUFo5c8s0h6Y8-PYIoxhWFyuL-tJH8YNxPMQsSph3A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/vP7WULTQD_8aU0o-v5RSl7_b6V4T0u8WgSYR9W52ZwBH7hZtp8PG3xl63KsoDZNY-f9XqwGLywiZYhyEpsnDS-uMjVfrrkbTttFPdOcDhQ5414ejgx4kUuGD33eTxvt6LMWyVwEGhXUpwUta8uFG-Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
