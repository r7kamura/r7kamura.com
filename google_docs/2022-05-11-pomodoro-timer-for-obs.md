---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/qGBLTjlHh2yXuINCBHKwdTd9675Jmw7n8Os88LA2SrUGX6PdSgsvsrdNBKzz1R6kqAKEKXuGvizRJ7vBHaiGYsWUx4zIWTjZiod9z234MfSB6Gw_XdAxMyMNug0a6n9dg0pExkvMdf3Z4WGIpgn-YVHC_UilipzXNqOQn9KqjbVhMUP6Ob7Ewv46)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/Td38eppeYaBcybJYe0bYB3PDrnTjJ8j4aAxi-BQZ-2Jy3grAUxAspR9C3CTJ0On-WoTTjY7aG5THJCLF-hY-GLfX7fptm2jFeTgT5CPp9UpEzq6lCBJqfennltigCqQF3zZJUN1hNAr8z2aGchTi18xXV_ElWJjdZkw_uyCrKbHjpKjC9pCoa-he)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/QM8IWtf1CdcG_egI94jr4gB3ZglNNliLdH-RTKieZqJ3ezbrCkWHepkKTcsGg9jD0eBxhq9Pu9iAg3Q0OSSmJyyWV1NE3vBJytqZJYMSo2xQGbV6Mp4ltsDfiS9V-9XvwtKTQ_qoWExMBtj4r8KF64aylXDQpoGZRfhQtEVhM4yHtGrnerYyLsH4)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/B9MWH3W0AEA0NEc-uI5EV7yJniTPllQYsFdY0CjrftI9Sc5T3OxX29f3cgcl4BsNJeTQjBN8XPRX9QUdWnsTtBXlIz77YQgann1JJStZfXo4LKTmnlylNoHbwhiLNcTlawebH0_o0bJ6U28uCN37H4ZEoJo-DDrH61BDx4STYJPr12YITNvx_Ia9)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
