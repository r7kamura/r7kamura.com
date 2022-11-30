---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/XdKQorMmgVFIT_13ksRQEhGSnSrfENYDlxbpAKC0PXM-eoEOs-jDiMyqdWOEvpjuaIbOe8GQvqP90BtOyOFxw9uuN15299N5bNIAc88mDcmA6ymQI7bqpk6V6OOWWuIDoy_8_6pa_-5__bhWSpVKI50UusWsxqppO7ghwVrJ-XXJ67eFm4UGvel_w5Yn)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/7Rvvfdawmfu-IyUzNkSK5UyARkL3GHc_-ivrnpkAsfKHvU292lnItftaSBMhkFW4Ga00B_wbXqb-jlUn36LO2_ljS_CVPzbtCdl2V8joT0pKa3nlWnjGB0W--G5kiTuIwaM3VLWlkqT7FjY0i9vGYGO0d4JnvPj1KBw4Howj1Fxn5SYave0LJNG6q5BU)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/KxtCJ5Nr2PWC-lbdG8F2sODAqBua1YnZBsy0X7hjWMb09Z77lVOkQT5ojKi_R29HdXN1XauZrH_rVKqea4SFmjXWOxk8rG7hZYrJNqEefhtrzgsjL71vX-9qQb_2XuEweU4IIYGCiPbTXdsihmCMRhLWUucckKsOpJJx6uG7qqm0H6zpDjn6mmUMuqyJ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
