---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/yp8HX8EfTJGpV0i8w46zs-xINzMregcX8FHk1f1JG9vl3OPWVdsYRFp6K0Go6V2Cm-oB0dJUJO_S0pPL2Oyie5rYvCU5-0ke41lPyQszIy7CR7I7L4LzVIL7iKzyG16rZhbDfLI4K9cVlVQLX1dZYZsiv-hVXEJ4KJGyYFCdVonvUWSIBGrMAVX1)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/jxwpkDQeHuugJZ8N77zLlR1KCGHAlB_paJ0o2HcYjHhBpNHJnT0-9rywHmeQuEGhMFII4_lBpLq9ZwjyznRkdVzB5kpEQWfg_oI6CoZUvOPKd5LkuB1dmsXlcZ6LDtqA_1fnzH4yto-i2zLiiJ7JBG8lnQMG8Zdq6yhBL1gi8xE8YMX_ZjI7KSbi)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/8eAVeej4fXwJU-wIu8FB7f5iesCS6TSGqcXlvNfOi-yXdvwRXFK9D1LJQfZOpjoTThbeiEDq4-F_4WF1u9lvpFJYsbwo5pA-aj_1UJM7-x2DyNCKIoHmldC3qbR4XUwovQ_1wp-g4cvZZkZr1Jf4RKBz-FJ86zI6ypjEHXKWI8hYFXqEw5e4PxYF)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/JD_8xkKDoGzg8jETiJnVIpDIwqxS6yVPKfwWTg2HG0en-kgy0uQC6CUU7Co8_LqYVglXMV1GnEniKEoHZLb7BWRgQWgGrSWF_lIJoIqvb9NwL5vIKic1qJVCBCaAF25z0Zqr_mVPPq3jZfRFI0gdegOpwjCstL19IPJO4Txzr4aIN6DCI_RJKW2p)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
