---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/iwQAgHRhuZyOQvIP4u1YuHo0AN2G5Btx63knAeOg5CBX3xjo1Zx1_rl4zLnapHVvbYG2LdwBWlUNfiPkd_j8gxvIBjZqdELXmn5xeIKyUNnIV18bF9UWjHVX-XgZrXfG0gQZasilrnUh3p3Hx4PNGAMp0rRnbAx2yVLFmimE_m6VnU6GpiShbt5MLsAw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/8wnd-X4tQ-bdGILPk8ctxug6uxA4CK4GKvbkI0Zp9bvCAasYA3nw5xfPOyyUOl9SEcF7GkyFafOTWbjTNBGMjdftwi_SEUcDKqD3JSyJiA9Z6axlQq92j_gmc59glxTinykOyQI4xAR7IvH8z42-6FGxznw7MCDgSNyZMA1Ch2__MUGVa058m-ZWiOjW)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/UInXZuKNSAxgExm_X4QxiO1dCULq9pJRkpTieoYMQ-7WiF-a673hhsQE8emL4AweGHKflHGakxV4E6vxvdqNg0mII4i3dIbMP0kRMaeoL4wOb2zVVy4edJafAXrIDikOpGALJ_UjyyZT6cwrnKcHLOs7R7IzbnKousAF1qvZD5R1tdbXApurfrQSUjbX)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/rJa-YDTl3Veat1aczeFONLHg1fpdIXYUtXwD14yjAXv9D5XD7UgDB3yNIKCymuYEy8aJg67BB2tYBAtPV2Fx6FDRiPAljyQC07Ki51axjzB7yfbknjiqAilFx5_YZCBu-15rZMeZUD7X2E_MU6aFIIH1wyGCOUsAQmOiveYcGkdv4G0DDK_lAYhexr44)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
