---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/05By-WpcbNJKEpkoynLpGFh2wcgY6uJL--0TJDNAYuWDH3aeP4Ff7GuApue0sfORo2XtGU4fs2iAJ8tCYTvcVXdEm1fPWc-O7pIG9sZekEiqEDDSuyYW9q46ooij7nL4w4L2ZBFefIscT1dMyVuUceF0TMq3I9DXvNxaExQJsUCUE0cIGKU6RNlO49Lj)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/hSDUkvVgWk7rCUnq14_01zFJwdWL4eEIG-PM2g_XQtaFBpRNsxZSCjGaPQn4Z5tGohEjk-m6ernymJk3lzcDp8Mm5nNlQkKaErO43nIPzKI4v9y9Ut3DGEqIenhZKPkMt0F73guXUZbASu1I9SD5AqD9MqGQvIMhE1vnXL0X2YWhZy2yU3wOX581YaWu)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/w4EGg9D3FPoV_lZMKmFP0AU4VXfqtw12l2Tm7HpfVL4FruDYMjfYVgps2GioG_F1kRjEOYP2GMQLyvOMZzInKfCSp5vDNqS1Sy_osT4TZVKAc9lnchgn0N273C8j8mzLPD0_unJCjfYTUdT2azZerg2nEhC2F62e1NhvE4_-5CDNJiiW9RF_OXP_j-I3)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/fO8Vfs4fB9TSHhw_9ppc8gHMWwDiBYGXA5OqnIzsbtaCv237KnHxol8PPS7E00nonUCGrrck44XNaYdfCGRDDOM39_seeekbUzcfYXzscQeg8pXawU1rx3-sLXzS2fGMVur6YTJ748fCwwflk6zD97qRkwBtpVqewbmYxC64dpQevstz3TLu7PwfaVPq)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
