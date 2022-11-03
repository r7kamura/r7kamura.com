---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/C2aHT-_pPFvOFxd5qpBgNAL6G6tcN7--FBfqzufdpvJkUiRdDb9OacFQAE8sBoxXiGbEceJB31nCafD0rA4LSOSMdjy3uLjfyoftEe3_M9nsqO3AMmV5HWUjWn8pasZkOODcCKkYe1YappLjAL8HUb6sQxysdL-kEy6eY9gOxCW161uUYYL5RqaHYDHO)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/vNQsBeKl3nACuNl9QNL8ic4DDCRZnYuKI38SypbyvI1vQbZN1zjksj6ru3_j114W1x8c55gtqa9nT8xP3Lgiyc1a0lM2ARXvHmOk-HotEls9ZokLB3mqcgWwU2SI9rbuUBwAClFztlmsJs_b9UYX5PttAil3DDQVZUgrp6lQ9RF51_7hYdRjKDLmfQ4b)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/zWiZSD7BxVMc7Odx0sCgal4zqcKSDZRNiMVOAzAZsEHHgNK63yN3SMLBBa9W-cV0le5bOgCzwCXFIWbpegmqrABTlOw3JL-LZCCqTE69ocSR6dMr75pMyGCxEqRWTmCVECfxK6SOlosSGp8fADPX67ui9IlO1eheI5NlDMGdMhnsbEdZhzQ5dS9XfdYl)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
