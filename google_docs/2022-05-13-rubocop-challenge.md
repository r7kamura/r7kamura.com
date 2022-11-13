---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/iY6YOtj7u8zkH1JG1yfk_mfH-BS0k_uDI8uOXtzKcyTy3isJLDJekpP1lNL_gvzu-OcHIGu3PtMl119jcUAR11_XKwWkzuEZfTX0AjskuDuNPU0efTpw7SEVaeAs2b28FqXNX8qyExl35_frRuO7ar26OO0-xjmh7ICTL8UimZBHNbDkgAFl4kEP0ogM)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/eUnO4DfamwhDJXU0BPV0S2-WK7QYO3XCR6cS3Ee2F9Gz3c-dwwhUksSPsDPRMG8ZAc7chUoqPv8HHxZuoD5-qgF7u1crpYsECLr3qdtwrEM1p3AIhzXDbOaY7ztlOAPtbejLT3bfCNSWCeRiFu4skPXOLAeI9Vtllik0x6vYX9UknHsekTd5F1V6DDNZ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/XzDqIhUrTrCcBr2rEUVnjsiY8VsHeAUuri3n9C4Crs-Mkae0wtE5qENr1Grx8-c8nG43F2EkN6e_o3LYNJNM6IU66mv_7sU5Yjg4ew52PdJQc6D83mcfqvRUEIdnqyZ6xpDoiKaclMcLfUxmHJmYvZMsJafLmIQ6lHhMHoa6fadedblrkl-LBsLn3Avy)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
