---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/KKXyiNP3QsdtyyYmblTRyW-voxmafEZrbcb8dbOlC_S7QXrbbL0VbPk1tDd-DYbtZlAx7v1e_7mrTXbPybtqa8lFM-Mx5xx8FsDOOR4Y6ulH9G0TuXU6BnBCgIgiWI4e8925QdN6v2pU9Rd31Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/OaEacnBqH-aVexrQ0R-nIORKlMq7tI6LFaR3ba3jzRZP2Bu8Qoz79lc2Lrx-nh0lxD2kFAoELjf03-57UWUk6eqQ7z3GDF_K9IdfVifwYRsa-VhLn_fh1LHqfM3EWk4IqP015VALUpZUTBhy5Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/hnQ3G29fgizn3r1_pGqYPDQYieciK0KlAuFo-fQj5cZDOYC2SHW8OD-VXWlF1BKkefdz-XMlrp0vq-CRnGmM2j_liBK8VXGV9sSBKcOpoWHIKndh6jBmMv5r8K1uJz59BAE-jChtjSy40mFdDg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/h0ed1pnFpsVkyTwb_c9sq-T3IBcLVLPv6ixTRL5qEmVrxp-4WwWZJI29HVORVJiMCiVv8FuCzKo0NrMt4HZ4A7Coy5sgtjnhxEHE2gLoWXrzP79mfLwmmwE2HvmLSoxC9EK_xPRmQJQa6pLKHA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
