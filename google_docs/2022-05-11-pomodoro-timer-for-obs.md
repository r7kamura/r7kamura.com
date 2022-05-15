---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/YgiIFlfZLXKox2woqqw-MjKNz0wfbzVk_EuJB3P_eUVa0o2VCrUatQ_88LmjUABjceTn1o11qjm-u_f3Pdlr-oii9iat92EL4dxqh4JZHdpYtABHkMarVcqeCT6JxPk-Yjjn9lZGH4v3AIzNRg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/BzHnbxvEbZz-E8fK0uTS6rkGLx6gAUKCw9KTeQfu5izVwos9r0Az6KFYdcZlXooeFdVxgEhsbfRCzeQ9CrzdBVdBF4hP8pcGSyzOIFliIBMxzvwsEQhZPxzxkRRR6fH8UCm68iiaYj_EnnwpiA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/UVJPUk_3h4O0ZymQsqHo7N2PcvEmpLhUHCT9GQh8ligJvZdEzp3J-zqxxhaWhK4ex_ue1Fz1Yl2VyweP5HIF1O4J5y-td6g6pdb-EUryR05GsBL4vY0fAAcx-P_lAAmuLHnPjGHONskvo1Ovbw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/waENzMiYme7g6jiXcs1U5-PMVHx86noU4kYUXLPLNv9ItLrPQihtrMX8nBUMHVqWQrk8v5x3Xe9yL612Lh9YhXbQjKQFcIuCELxpH6XTWUUNRt_VSZ-xuFCcWE9_Kv8awpoc10JNpfN_0ILEZg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
