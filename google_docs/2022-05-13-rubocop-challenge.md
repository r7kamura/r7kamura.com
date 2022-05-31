---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/5okuLKhz8CrerQ4m9BspfEpv18asxMsSLxw625uqzayQ_PIPWm5lDs_oNbvOxFLrN4OYHcKbflCCM9YtWNXHeR3IEzRnQj1jvudT_aM5hQjo1yi_ZRCVPf5dbsK6tK7WgKJ6cH_t9JdB7KIg3g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/y1b_eMe-B9tBVlWuQj7CbZOpejDCpsXQPpGL2iqjooyXn9POJsqYLNvK1nIs1q8lQ-7D0GAmG_vZQq1d8t4ksevPmo0hqRdjyZQ71m-vafStNAaXSvbicdrroqAuobVCLjsgcJAW6_6et9tMXA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/fbGDA4Tyey2RnrPlikZPJnKy6yzY1P-QICmqpNn9MNFx1DhRUxVse4c1fPJlR-h9Y7PikwAA4StBVNQ3VrrQtlEuMjWAE2iZrkaKoQjZpDPzmyIqKrLbmNdlEinj7L9F6nHchvnl_d_avWgzPA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
