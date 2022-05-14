---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/8FNUYWiaPaAe6k2FO6lp_mI3khcc8dS7YRcv0wYTM0nWjSwJ24XQnh_Y8Vp3zYa1jZHdGNsZTX0F1CcEEvTdhJOoVQGIJzbMrICkPo0xuzeugmVS-6x_yJIn5CzlVb6uFtb3WR1GtPU092u2Tw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/sPzwGdGnPEsLlSo0goRIR3onkPK_gtE5zgmxag9Pe1mdg61ALna5p6NIWizbJMTi2JPzk7JtC5B623q2cKAbjPqCA4U7z7seImmMjIyP5Kz2FUJlro9dLiP_NkazMO2DccgvhBlARlRcyXGy1w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/zfqW_3WCtGkNAAXxkwEL7bOJtrbcDzjexRUURWdnbWP6264EUuBe1DPpC7B85tOWe4c0zApFbOzUFhhawW48-QBuAivh3XDxMh1l2dxiphduilmZLfDl1BMCdF67xfr_TkcT60vvnWpeFezaUQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/i_RlybRgqo_ZVTDZo7knLmQze0YOb-XAFMTu7Uw-RC9Xm6vcy9PqygbDPDu-FrSThh1Fljd2IDBnS8xKeF7CscGZvX55VsPKe4-j9u6gR2s9jx5JSDiUC-tLVn4jXOQilBWlPkb5goVynWBECg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
