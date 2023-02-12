---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/yCPp1JDQx5ltYJnx903YQlXYWINSyOfT5oQ5Tjr8jGsxCooe9e9vMj7Miyer3M9VN3XQaTkQVFho1sdKyNIF7OIoDE9_oQA6oE4eP4dE3aUFsMGvyYvX5Stl_NoepeAkqfgGcgVCf_laPodLbr-l_w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/YTgo4rShXke0VRSQi0kMxH3wBWz_6-bTwctzdI5IKs2lloewACzJ1S2A03AHOTiuMH-aTM0CVmb9Om9qvwT8fLgT512QhXwrr4SepBw76s8W6GeC7Gp8OEWbbylbUsfOr0IG9iJyG_1p-aUQtwMqHw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/EOyMNTpJSlbJCi1sKWEXT3z2SgR_nVP5F0qsag7d86p83nuAeSxEyU5WtVLv1nLwsf7qAs-WMimTF1ZW6QwX7Wukh0ncD8iElYg-XutQP03pTyon57PLX6ZZz7StSKwJ5CrJsnB_YlFt1NeL1omGQg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
