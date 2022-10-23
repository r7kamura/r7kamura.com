---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/heECmmNXu4tzluDnNamsCOu2rFlfkca8XA1vIzRKhqDFxgJD7hu0FTPbH3DpC1sfCwbu4eNC0mWPeKOLN5N8eDn2ah8Q6PjhV-ik7km3RiZpyvKCOduVDRwOyPzJrxtaRbmN2aa97NfhDNvTnk5edx4xOpF7hBvkgOOt3_PLroo-sE8v_Vl7EC69)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/g4dOPYUeVILScDqTg5-l-Mbe78MEH2crDwj1G0UZI85_uMItU7VcKEJv1Frx1ZO1JXX8qnm_Mrj03zEvUYtU3qb50iSpp32iuB9fP8CrtNWbLpiWt--vwQ4EFcHJ9YQWdp-nMKsQt2jyGl4GB6xvkQqPAEzOQ0rUd_vJya7HPksFTek68nzBX1al)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/KHcOoYRZLESBYw3TbtLUL9JPZnuxe1rFHU4b5hdE9hrRrIVGkxP_EYPpqYDpY0bqQLvVZSDIGPwTHJbBRRssHr3T7ZCTpI9cGujMRvjzSm0zJ6_ktOhVrRcKdsjH7s4b-GZ6bmEfosIyj4HsGFVLyVd9fZ8NJgVn-kLb80eCED_3rtVraUCZt7x4)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
