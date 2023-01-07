---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/0zsFUjTdzH9hIp-1uiKupuq1EbnVzDULzJDLzIiO9ldVwpvM5fIeoTAvIsxl1vE49ItQVpJcbvpTWawfeCCRSmcAV4rmCa3c3RFkc9zuQo4uImmnoF1YFCLQLSQQzvC1xwz7D5CEmOU_JlcUOvlznzr9v4de7wRpMNu7e-b2JEviTIJ03jkKSlExhD2z)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/o_RdBifdlleI2wWcFm_D27Mma-y8J63i8KCAoMJ_hFQtMu6Z-ZWVlMiVnczcC60VsAw-gXFOeGkZJPK10nX_nz3JnCd20I6egDDk7PQqQaiWaDT2XeXfn7wgPUbKRwmq02JsWqLMCukzP616Jj1DM8e_mPi3z3CKqcxB5NrUcyWH8ZEpLZfe7gM5_vLG)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/zjnZxYI9ThMXdeRHxVzCYac-9R1NZxrKnyyk644nKz3NJvJ1tEG6XMtV6EBgfPFFt92MsnMuCF1Bu0HMVEclSFHX2qENv0SbBLubIN18havGOGDfGja-kZq9zNRvHMAiE2zbOG9Fxx2PAanLDnYmPJLLFVyNMZbydc0av8A9TRkW8HVumKOs-PCF5fuL)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
