---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/M89V9fOQF59FAUp5n26ha-M6U-8Ldwr7BgG9-Kd6NkcoxJcEh2fTyHXlX0JptAp9nBlr4hizGLFo0UvSO9bW7EWeyKo68uH8iI_9pxOWcRsUScjgzXCxc6ZMn9jQOY9BJCe8rnKNlwH-CbxQhA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/HnYb-dRsGWOLHEGRWXrHkSnEyfiT9n7S4AYqVnHjDkfDtvZjo0ghYrhF6n-7E9O8K8_xcJKakHe7WnWzIQ1RrWbv7n_gUAzbacNTE6g6lFp9Ybj3DniY7H5NINVdnv-rIRu3HPc_U2niieHq7A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/ovxvpd5GsWGnA0zZ35v-Z-1_PBjC-1drMF0AUpqHh236H7OxBRfg86FY9aqz_NnSYuu0CcqSOojUxwR79O7JUhpaZUQk_Q7azmd2Lb3gIQFBcl5XVZlge68_dm3t2ejeemNyvIubE-V8JzKIVQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
