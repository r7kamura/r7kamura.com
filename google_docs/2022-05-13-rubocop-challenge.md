---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/NbleNOXpQPi5FLjDe6C9VdP7t7pWpDMErNZ67OehTSVJC38JDCEumAosxEZ1QLG2rqU_APZcEpvBU6JPZBsA7xja1dny_JZMANQp2LXHL0f_ngrDja0IBcaVUnyaCncmFRWe_u8PJGtG4UZpzA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/0XRkkmQDw4YK0NKswcXIxra8rh04CnQcJh6MNz1DrTLJ7bHQCw1Zkki17hNVmuJ_blzgWV8v_XVycz8w04tzPZmeL-Ip5SrgRJwmOJpdozzbeFOQCPWNVbyy2Q_Ms2raDsgoV6_rqYsV7_qoCA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/NvSYvxNaDReI6W1kfaihP9nq8DJWY8p6zR77J2OU7LBLcQNQtpsNXIrn_mosl0p7fAtaVTDQXRp70ODwX0V8QY5z8hKBy2zJ-KZw_jiFNSDfXZkxb-k9bZcASjs8mFOwqvSM85eui6zlvVBoDQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
