---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/lpYitZQEl_FO3r5B_ds9YUoxaT46e4u_24_XB5NqIfR8SgPkWXh1QRY22c902sJbusMQmby6OdNPe7ojGrPap3wMzaPA7C_UVf4an3xPYY0rLCDOoS3ev5RFqj69JtD-LltJIboX2lMwIQ5_Tw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/dLoYr7JcbauZoj7NJOLEGhddpvcEy8Swv80C7kT404lPUsuuh1691SOabrJhzOd7i8w04V1p1lRW-1ptYcU7rZh348jqf6Lum9tkBZAedKc4AqDdIWh4T2LZXTwwt66ZwOn9o9l6o8LC7FcbaA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/OLTR6hU9baPMTqbrJRPynLqwvNvdhNi86NGXNCspqa8EzUbndiEW8Dc8lmgRXYEPDNbNKwbOMZ9B2Em6esFHMhw4K9F7VRlnieFG29BHposJSM4uCwMdSWtb-6fORBd42W_JhsMY6Gw2VDe7hg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
