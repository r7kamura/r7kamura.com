---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/adRBcQn5csXxl8y1luHT2QTLlSXDWHxNk8zxgGPi4LsuJ9Xtgu7rQLRF99_OTSWyouctL0C6BPcWQdRFIPTMlEFRIAaUNKArgnfHm-Qw2BC6bUettIFifzdwjTHDKfJEOXQK62ONqLedYzcRwTMqsWeOFS23SnyFBZiYDNVwFdcGm0SzvIrw4IyAeToB)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/QfJlLhDfdlJ6Kd6Jiomt2oBj9cdjL_oA1SubLk4E6RhAiDBtmdPprsP1JOoxHK79jvvOaZTnB7JLCRVSzyh0XB_XaCHuOIzOrnzOh-eKGpvIZbxDoFnL2Ds0qtIoU8KMuLozIS0jlcjJ4O4EnGDU82UdJ6nhw2dC4Vy0kDeD3iRej-h5O0axBh7MkAcZ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/7ku3Tn51CtaCyYyHaD8LsHjKQ4Sxa0ixtwRfnEGhS7_FMtekPx8OVCxCuiGrjQGYXnSZE7IaKIVWTaoNsv7YPj0Y7IJqvgmUBUIHxvRPIgXPep7QfuaCaMPWqI8n3gojRDdWTWf9RMI0aw4k2uKXWwsFNvqLaOXEjZjlz5Nir4kaQXU-c-gMkcI876bb)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/MYbiZyk5oJkZC2Pk3TQs6qCx5hSNOYOxwXMbTpEWYZ9TxRUAkpBDxkQIwJDH1tJFS9uG3cWS01qqr8G6GDOFP0UWJFOGb5h7UbFtg4IZO0RbP4D4815HRcZQHDzCHcCsg0ryxtA7c0xVEGYVYfPE0vMRExwZoZzmLPfnROwzV4027elIwWBSazDQBpid)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
