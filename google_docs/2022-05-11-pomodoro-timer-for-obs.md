---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/fv0x4Vn8_f7t-2iYW5H1BlLgNliAkvaB23RsIpPgmmpMMjBDMhvzQySs2BOkuTocVruK8bC1VRK5X8SRFy5mSY04D1QHwGoggyV9Mfey-tb-hwTaqZDjjdXnab6IE7O9czxfVRaHh1BBKdvmoA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/ju-gPvwCqwnY2otCdMAijdfYFsSqaneIcU50Gcimjqfgi5CFp6AuBK2cene0qgazjrNZhTUiMyQvkzhqW7sgEix2LBerrl0u-Rujbam0b0Yj5R_bHXJtkvZlPNilPU3LbNA_y9cLTeZg5-nUlw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/puFj8wf0IEPZa0TRSkdnJO7ZMsbfR7cudx3JgOSyvsRvsGXH-eOwESNBLKj2c2N9gHE_Q2-CiAxqx1-KhjpIJNtawB6FGrpmV0K9qDevasiiVhoMKLJMPCstuBtgwMtHUr7f8Ojfs6JYyn_j_Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/Qk6TPIxT278r1tDkNUkz4evsBvWbdwfBTvPWk0xO5R01NTq6vBAa7lpiknasAkzaGiL9mBkiJRjZYNYPmSGAE86JekwJldBqe57B1RYH4702gN1Tq6M_yznTopfatX8gfQva-sMNhgthCnshMw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
