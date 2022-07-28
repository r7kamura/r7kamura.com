---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/gY6GvOdSXrD4jGJUkX_wYgOt9j7RbxiR-1WypWGuH39GGvmgj9ePc-tunkPPKFjmKkbV3duBYxq3XCqS4GiXCjWyTia0lBsWlZ_pBMYk0LY7aC6rn7sVZacFTDfvHcI8fFgi0Bb400NmDwTQ2VZ9Jg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/YuLe08dAICr_oJ5XkCU06WY4CrsriTFoml7k-Rbmxbm94ByuD31SCqX5vYpq6nCNwA15y0q7p7ztLlPvm3c1GgP1BU3adaH3bTqjos9tph_64a-Oh7aCLL-xIBnzesWjAyIYicbhGpvvkg_yRdfjwg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Zz8xKs7E0azGjU0ieFjtTBflbx2amX3g-aT7tX7Hi3jrp7c-WAxLok4OLjCb1Po2kbIbZQ_F6tJl9RCiwZV0rpZ_AjH9WHxYGSsmFYuqkUleCiZ68xgcQgRxHRXJvo0QyVOFt6QFyANQRnq-4OXl2w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
