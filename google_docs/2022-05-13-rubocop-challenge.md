---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/PvuyRQF_E4NAQrNfjJlb3_yM_90zeBhvXq2XwZy0UomwI5759bZE3ATRblbz3fnhC1bRpB6gQlzK2_W8fOcEho6xaHNLJk1_IiKsyLnpL6jxJEKsgC06Op6pcWOYP0DA8MrX99Ebo65zRUhKmA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/4cR4UqBpb7RuRlq6TugqYaPIKM4pd-12ab-ppbp9JvXl4hM5xEYZEQZf0iVkdTs2vVKn0Y4C55LLXOPcplo2_Bs5sna3PgiPWCOwi9l7TT7gJAb67VlN9lZ9ZTPWcZbUVd8PVq6uTASfHNt7jg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/u5Lz7nAejljQROCQ3ex9imnjBCCqYD-5qJxGoUQnkfDUjDNpNeT7_Yfnk0R2b0OyyM_PB4eoSvZY9yDWzzW9UjSHPodgk7Q51_Um-HgEqUejePdsNlqhUhLW7T0Si4kmqdXE1rNadCTuKHzeDA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
