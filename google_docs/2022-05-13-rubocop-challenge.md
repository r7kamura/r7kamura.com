---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/DGE6-HLQyi6pxoQuMLtHX9SZFBGb8j9GJUWBmuBaSEx3G61ZdDza7RrQFTzeG5c944cysibvYPDroCjzFhm-jCVchFt3UvZxZMVqoUc2xa0r7sVPgyEq3d8j2R3wDgGzz8swVjpM6MQoUEwuW3HDKJO2OuUnDOLZLiVH_b3-6JIe11BJRaiV2PRA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/vaMr0BMZyboWJCtkYyrSt1tXs0geNQ-RFOCQwTEvpCwKbXhLAaxQpkSs0oYVJwo2x-K4s64Ln7vgX7aYnseYuSMYmMWrDJRhCnJhqR4Xk-R1pkJm8ku5t8vIVAKiqWmWFDcJramLMGhZeBZS0xzWViV5s-DoNJVbHT7mxzpQ-XxaPDXBQfKzNx07)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/6z-co7ml60UJpKdfs91fuMjhPECvN_p54Xrr7QbuCZ7uH1D6FgQeUlKyKI30C_FObhCK3KZCJuwQ5meqexWemlVxLOfo1HDK5E04MnrxO6O6FufceuFkTSCm4A1Ia6rBSIoxC8qk_5E3rtn2dhtLCl8Dc8aRZe8FhjbRhB3D806ME7Xh3USyFmKF)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
