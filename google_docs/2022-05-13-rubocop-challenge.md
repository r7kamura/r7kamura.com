---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/gEVfBlFxNI1xaaEcDn0Kh-ku86cSXlqUhKcbwlwFn0gAUxeA7PrwBz1BGKCgih8OxF8xpwRIjDkyPhrE9085X54A5QzPesOO1c8B5lrDa6vkW1s_bAkMMWH4_lFzG7Tgi-RgvXmQ0KXCKtxXrw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/zHS3-M6KD4rBlxF4B0FrFUEKJ5l4m7OugQg9eiYjoOt0YWBQ4A3lVHjvLUhkepjUlhNaONWr9EiP8ruih3NwPNkUpMrvdqMLKeXEU06g2Hvr34AGuP57-ZiwctfjuEOfn6IVcjFeqAC8WH-Qsg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/_u1tybHKcEq6-RRqxLh94IBcbz28aHCkPN51zscCWeAEiZUOnxsFVlQib7rYpbsTq7CgxfArxn20eQsBSPhnG8v0WD9AxaV8w2VKk6CjRzSexclE6rt6JGce3eFWfMIKRsfD91EmtEeEmwEq9g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
