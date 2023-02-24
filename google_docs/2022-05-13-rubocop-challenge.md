---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/J6qIBxHtYEpWcNEaKZQxSnUM2vL8E5LB3OwSdYcYSbHrqKh_R4kTX7o9gs3WmSZhzvn6jIonAahwdT8rkIxBtlGxiTcsCkE2nieG5zJPF_Dc17oGmLf4ARlajphwPRWF2DNnV6GMPmdjwy3U0QwUGg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/4pBNWeEyqgr4AjJLFjzTYRmisLA6oZgDAQCS0IDU4M-PFQquqTHLDjLzfcvaecsGONsOlix5u8pObKo1k1ofh3PoMNqTJRdS3MgXbntpfLyT6P-doR74dO346-24w6fA0JMXG8IDlrLnDolMBZeomw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/sKAVv2rnx_6aspiAoF_F-s9yS0Yog-qI3-3XIlIKU7sRnS1SmLJHUxcAbFAP03b2uNwYmHTPGlWOj06Ch2W5dmMHybRDTsZBOKQKZslD0XMK3xBVuXT7HrR0PHI0um7xnTgXpycaKInMnm-tcSjQPA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
