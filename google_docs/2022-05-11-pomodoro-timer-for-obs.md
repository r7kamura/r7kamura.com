---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/tzU4hMqxaefHL5bSzrrTKo744kQFxt6lzXVkT6nHgDWr6piqNhHmdssjYZ7Ha71bAH1wgcu0BV1gNeA9H5NUBfBCxq3ClZieS0fyfoXXXTjfKT6hn_n7ChpTpIyglOyeIphVrRtC0EoyvQPFeA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/6ezhklssreCL6yKjUwYNM1pCeLtdvsWsg0IBMCftExc6PDDfmfjzTJbscpQ0viFFh_q6fss2vAGTP-9YMJcArvCyXO2aGueEtkLCK-Q0bKTu7C90yVcPHFBPmfFjOaeDWyaDdyhlnClG0pM0pg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/qwS8w5YpEC3zyHJTE5_jcelkRaSblkQQmehTfAtkksOCWV8qpBe67p_S646iKyw1lMv83QSJCrZSB5P8KM7Z_DIcIN95vRHin3GbCle8qpiYLcwS7Vi-fiiTFAqJm3ZT11zW7dZBnnlfFZkItg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/eNrMEhxCJJh8viaLsmo1b2-YumyxQUMEPFpGuv-DxVPg5GnIXKLbGT6KEJWvSX5FVwSCvIEUbMR2B8tBX91zfQJ6OlKeh05Jfop8WPf1MWdc4S0ONB3SPrMGodnq7RNl1h_XfTQHnzUcZlw3wA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
