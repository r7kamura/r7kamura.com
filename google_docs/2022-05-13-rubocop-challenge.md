---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/aZnYcLl_aSlbUBJaIlWQaCt8Mk2YJePYLPicwDnWMi3oiuBDhITmarXrqwjlfbPUhJ96oRTk0oU8HLQjKu1iZwxkHeUxok5VfTiKvL0zrgqtaE_pvbqZK6K-EtoF55PE4yib98RuQyA0tBeKYD2BnA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/i4hHGFZ8K7HjB6mvWI7FDXIRMcG17gP6YCaoBtW4wYu1qqFvambWlvrQWwmP8N7RieBC0LxJVqbEOuLAghxTiEejW6HljoymjCkkVkF4RnFoq6IMGl4EuZGvH43kNYICVDlTlrnNr9uXw2H4J39ULg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/BlnnWE0DAK-Ru2gWmL4ADrjA1nrJt_cn9Rkuzh8IX0cYHKNON1qZVFdqLM3wdp4fh0E97U7i1aCKlHXkkWtsSnBFX0w90qIqPuPfRiSgNgAKgcDIGObLmfvkBl_UhnCGjMIpv4eJikPeVdtHy8EFMg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
