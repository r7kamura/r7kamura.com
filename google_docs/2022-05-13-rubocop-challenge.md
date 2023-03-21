---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/aYHqA_XsLO7NP0jmS8bhzmObRtyy9UraMyivjqJ1pbWAFzjHYAMNgXGxMO0Wth6Vj0r4TBywBlsC4mL7p88hmu7G-I2FRhLimnxYg2KkIxobRRawKBcyFOCNuiN-yYg_U5dTwNprWiv1y7RYsiEfXA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/KtLGumOSQIn7Imvq6rOx6TcrzsL5TESLYF34AaJ51Cesm5-N7qXUtkZh5AfbLlQ6cGtiizb1po9COfdC2275rAJ0vmh1WtzSbYmjnKCHqhZvzEdwRkuQH59TGhYS5FTS64MrGPDe8lgmC-IA5Rl5pg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/8uu9al2xKIZynN7MEMwboE5IxlJSg_p7HB8OCarFcs2Yoro0LfWTvGMBnRnIaE1rjqe7OhhAfCVsn-ZVdXJJBG1L1X2cmHafXbIdAr2pBAwtlKhz-kAzJVttFKlcqF70-sdJksYgPChzK2Cs4ydfBA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
