---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/QvZGTqPAJ9_kcMyXkfCwfls7RBwhvP6Rg2xtGHXZ-T66bpxybIWpd_h6wc9bnnItmqPauS1bJGFQoZChOZxjWY-mkq0RCA__XYsWmGVGIwe7ejzD3Q-s3SpN__HNwNHnk5ht3-X_M_xa1-UtrSfiud5okHdFHJN0m2RQXnB4CYbomo9yiWKbR4yROGx-)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/7le1jeP6fzS-9XFSHbdeDDNW-rQsqlr7RDFcJ181U-eyZ4Xm_Hoe4270BLOUuSLlUyAa5mn87ffAMWEkpOUYRRMpFOaEeAGS9joem9bZUGT7P9SIlanHmmpWLcEWNs29dCJqQxABimzwwTSeB0MqFWn2jCwQoIF9UMYvFS1vc3kBDiaCPeDLeAfdDy5o)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/lxSYLsJvgaYVgg85l1PuBlgD0HwrauFBIRJINgTj5Ttxl_Tje-Rzwtx2WzDVv_pQMVDu8FiWmAbDqvM_S522611JJabcWKE-cX-HLr63wic5RnwfjAKfAZIcCGjuG2a02TOieRCMJrGIB0WvUVCHz6iBD-w0ye6dUZ2m_5OOWSjxjBtvHg_YqYX2XFuQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/sc_HBEEDKoKqOmuG4s7TRuMLPCuI1pFUzwhKDs9nlxI5HsNxh5z5kaguZ88ELEl3MVkzxTl6u_U9wcr6go5k4mWOQzsoQ6dd7y_KBTrWwKvq5IvdgY189UK2RAc6k7wg9Kj97rY1OocovS8YzzIdaF6aZQ8h1CQlTX4Pd3zPQENSKjPJ9O4HZzSNDfDG)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
