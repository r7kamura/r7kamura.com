---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/nHc7rPXnP4FafsFO0QZ28JvRU-Wi3hjUe1uCrnTRK4ahTIniSrUykX1B9tcIopbbenXVUSgXgl_eoxurjzZ2iv-4ZHhG53k8a5rVG1KRgjqsSTHntBrq-18d07qLSQ3dmCSDKa9VBnVFICt6pKuPzKDqFFrkpiSNMnBTHOK4Sj5DkSx5KH6dMKfz)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/FZX7vbj3h5JRDcRkwep3tKNimtO3m6AtHFLV9qFZHaY93EXvEdEDG5u8hSHQvMbSfAZwRwHgOSS60789sJrGkSo9XSGjdkvwFUc6FlmhMWVYWBPV3ZXm_mUqiOHi4ungOQYzxv4KWShd42pORZ_WQQZl5WCrKFM9t_nAN-lE53htNqvzmXrzrpP5)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/QOdEP3L9mi9nW8Js28Ll-kRb3Ige4zxckeJWbhNLIiF93YPWurKOPkOScHhKmwmI70LZApOJZhaX-JpLKHJUXfEkQQ1r1BN0WeGlx_znzyfU--n3WnHaR1PVoU-SlXuBlvx79vz6k7AYZfVCEmcIuX5wdugnNRBAagjRAli4MgVhtJh5RU7VXIaq)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
