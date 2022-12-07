---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/sx7rUY4lV_j6hacKRiyHY04keL_Q8fV4RiQbwUBqQ82vmin5ksivPRmrNp9XzsBqd0sU5XGbFEGWZcSJG17q0lp3QpYq6P7yrnAtOLWBQB4h7pcxGN09NWgZlGQ-H1AYoMQrMxfWGsoiCMaaKGAkph4L0FxGhdF-rE7NmgYs_8JMrzZKflts36L3jOe8)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/hlL8NFGgE9wJnZp2Yopnh0AZFeU0VIkV-_3pzO0Do7a9Cujr48BT9fucj1ZlSLmWfwD9xfnUgNM5ABvZSPmu4ns3DviWah36rhmqCm0wNNmYRtZtjckvhVOWtJ-kIxun0tMEJfWjhSQjjKFr5JRx_ThE6cgtG57VWzO0WZBQeYO7A9BQcS18Vf0IicMw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/b88wX993UGhp0uKjGYG-6fZG5A-GzynDn8P_urmMkjT3CHFI4r2gwVJt8Ok9y2nkoB0mEVBCVyzAvqgw9xof0MgONLq2wSu42Qy3ufELoG5XWZ1CqLyB7EiVHqKW1S80MB7-vTgwflyqaqIJT_DHKnz1XCNY2oVAuTKiCRATshoXTvEgzCIUtldx-ufW)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/JcOuxpAK3bC96rUILj6DV8zxteRJ7r6An7s0WOBe6mGtYIn3Bv7i3S9fXiTwm9ddHsc0KQ3WkexRXFzOm6gkBhMLeUG72iQm6iI2d0psV7eWyNXI-VEfLt-2Gn10CSz0Gtme0kR8cpNfGogIEcNUDagRcLq9mRYhcxbviwuOx85GLyUCWEIMxnMj3RC4)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
