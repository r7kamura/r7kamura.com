---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/oJnIgG5IFSwz0EtjnSGDzbPr6cnuPNDUG-e8rjAvpVMHO0bzMtDM5Zr_8OaJSOwp8w8TysKduYc3RXl9d3d7PZT45-sybg7iMAxGKqMRf6Kr2UCW5TdaQ6ipyoU8E9p4TXYgriokeEbTaIm-ug)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/gmhwxwEwltxLA_EGYKq2P1EKypc7FT6m2mFMlm8GmymWKKFNUgbbwbozneoel7Wz-EhvJ4EEEtAbOK43nlDA2_DIOKbspSTXD_KPXqA6-1Tmhn2B0OTYY4iJWuGPvWUuKT3WYyBgFQwqxJaxTw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/bpg6M4TzK6gea9fHLPqZXY-VjKHMJR0Jxx0wQ8faE3G24hIpokTpQRmlwrwnlZNs_4kEcMrmuQvq9S8q-y0WNgmeTmIjL_WfODsk1YIZitbwSIOU_ucvRGKcMoXRivmpL6Z0BwljN85x7qXsMw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/vSAK-LniT-CN09tVoq9XLcDeylQaeTPawtSAY56NnJVivBDQXVAl0MIJu8_u9119hZyE9Mwx0nE-7Mlr8NWtx_G3540itiAwEal_dtkfh9V83_Dks0vJMlIeofZeIi52b_d8T6y0oydLXAtpnA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
