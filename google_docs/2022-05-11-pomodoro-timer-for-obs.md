---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/u1XUOSHm_epZUjTIHee-R3IeWR28Apg0OrJm3U6g7Im0L3wed0rt6h6b88FRWEfUWHxb_NCcFHS1oK93h-X4LJ5sCi9x98PIEBpvKWLT3XeY5BTqXbPgwCYOwl-fHXoRIoW4JiQBasoWClbTqQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/XE1H-g5nSt8jEGaqmtaIj-Yz45TFcy8JWTgl6ACYHn21XLXT7T0ZrrZHAZqttHYZiOuqanI5eQxzYMErMsMm1ZppXvCwLYtIqXoUkrPR_aoSoAqs9wToyxXme7b8jZZ2sDtFljjz_YlBItjLFg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/ABkx4NQtc6wDseEFoFbqg4L1lBRZH2dUJDcMB1hZlvU7pX3u4fPH85C9RO8f7CjajsYk9q9B-v-arBckUKn9SJY2-jccsLAwTld4nHu0zjEoAUSo6pG4cSaxU3LWksTz0COkoNesY65DR1OoRw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/7y1pba4vA81WoOs_g3zN3MQ-ogPvzHGoiSJ1Y90mO9pPBaC2p4V6h75G_f1K_1md9kp11Rt37IM-HA-FrycuderKiZuaD8ULo8u1qES0tkMFaRh8qkzqLt125NUrQJZ85VD4WtyZ2h1gQPw4qw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
