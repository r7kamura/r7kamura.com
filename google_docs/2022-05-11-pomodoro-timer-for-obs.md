---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/-AD-d1pO32D9x59ohvN8lZPwPDsxQrZ3k7Px1S8s4-eHsh27ovKDojohJ_bUwG_L95oCZCTGmcstBfeRxm2WM6aeg4QQY-iZDs6tx5YQjuQQn_Ui1lZ7o3X1hUtHx0yzRGs9KjX_HYOQvLyPTQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/X2zKaVnHbhcgTMNHOLiS_klth6G2bBXDRy4t2EN6Zseg2LtJO9CdbpKUcm6QGJYGxQfgDkuSCJ7fq_-DGQj8qIx27LRLe5-eqemKbWM_YROg13AEAAL-JRnAFkBr8zjdZ3BRrky7elMPBw5zQQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/wkPobN_C3YqWe5DEHHZvdpFuXS0ZPP2rJwDjIa4HPmyvV4mquhWkG0HxWBlcslcGv4LtrinV7ZlHYNu3543eX33saaqjdAYUYXcWxWTeP7NjNrzABvNhWmGS5QJx0qXUquNJJIL3M-eZFgoSpg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/PEXCtbYcCm4WjjKmkU3NXZw1xRxM9X689ZAelnm0-KUuO2Puxh-VN8oST2ccCOYi9TqHFNCeeyDlMOkXdNq1rXS_8Y26S9ujaHQdUjknR_uneEheiJcAvl7cCSdpCUH3re5oGp1N2uLB7NjKRw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
