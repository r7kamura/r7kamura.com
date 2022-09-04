---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/7ggsmnOvddgkMz1It7pznWM6IyZ6zL6b-94id1fADJI2cAMX6k5VUl16GKjgUTDlmhQFk8uCh7hE6TehZDTcA4hef4fa1IHJVu9MiOYI4SKY57Glrj0gMyKbHjOGcpWGr71lwrO5oIZMuBOq7z6awJjeDJ2hkeSvJfCTaHl15ntk5M6yLdEp3_E0)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/a-Cg1o1yCorQL_GHlrTKPFSpaAXNT71c3ndXmnsPp991epii2UQiwB5ltp6mtfypl_wGrIDmhhptoPC8-d8sqZjEUJLJgEhq48bmFD9Tn3_6NyAPD7apHBJJqXXRBM2PJo5Mgfs593SUeHXs3cFOEBidmVBD8mKBU2depDulqevfnbzSD52ENGCw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/5qiC4v8bk3rBSRciK5VsmLnREClKbCQ19PBj-9vZuojD8utWaYIEP-rjy7fxF5djf21vxdC8RRppivyvA1GmUfPE9EMTGjastgK2nh3Gha9YY16GV5Wwc8S-GV7CKLdykBmaNnpXp6jUeqRC0oaLdCF2j4JnR77_MeFiMq2S_eogbZytWVG4ckkl)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
