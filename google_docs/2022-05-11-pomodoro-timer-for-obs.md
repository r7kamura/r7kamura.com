---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/BnasJSEvHIHD8KkoAzFDeZLmInc8gkTfjBMNIdxNPl7laeCsBCWQaTySBSGY7Qff-vmvB6xK5fchHIv_aO4lCfsGDGxEbrL7nznwKdyTFCy7TqgbMrt5s7UKQPh8q40n0xk-TEWjcHCjgGGnxJFRRTwzpvfqgg5L7U7Bi-r4kiT2IjD7iv3AHzCz)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/rEpbJxIVfJEn1wE7_zKgmRAjnRPpklPidMMOp_pWF-ghjI4owaumOATMnzSYMp3Kd2tujIpmtgiDOwD3HaCMxFWMpSSLtY6uHIrNrPKpHpeN46mdaMNqNkXzS9mhvfTEfbGfPj9FAn30c9SpyDnh7ExR44XdQNUUtud6W-k6ZSWqjECbg3kWlUkR)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/ZM_sstn7DLnudziV7zw6gfLIKirIIA-jBJGx0FGZN1wnvx6sVGkHQd4ZaJu3QAWMQdY2S635XQkKTsBWvv4Y2ZjNDxSm2ZhyNhrZyoxcUKyYnlAIyK2eDpslIO__Tg-2xUoeIdxtNRL9hMNTfQclByzb6DlUWUkoGrXbLtBNLivx5JE-qvFVA6Bl)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/lMvgL9ZRJaO8nWNorRsnYGsfY8dirqczwsN7Se4fycHJ3pDuyf4-icE0Id5PqH-1eaH0z3J8dxaVKs2unlEd0pqRxj4cxB-09u9dib90CxTSbS9vUdEp6TuOuQtj8kHlAsriYDbn2SGgVtZjBfJaynNK6z6wm2iMBF9emZ2QaMVAT9TP-HcamrCj)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
