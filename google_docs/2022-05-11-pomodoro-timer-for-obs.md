---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/oqyUzQc5VCUViK8Se22I_GqtIQiMKGdyCBPNmieCTvbHetagtIVA4zHQh-oA_IgK1c3jmAs880sDZF1aYIQcoxYyYoQmTFcbVD70vm7eGu937e182ODhGiuoqV1D6bZEttGyNpZOOS0gkl9drj5c5b8UHWx0smYw7jovqx-UAoqqQ-da3h3qW85GXCA-)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/779fuOie5LZDjnG5U8sNS_PW__i54YymXbM958RR__8Yr9OVmWQ9lTZsuqVSB9bJEz3ZP44s3fAo4RwJtL3mpvAYCpFb4cMYAGxXLsU0_Y9O-J_fUnQHQtHAKOL4HEUspw2Mrz7FD02MNIpTkpvU11zWeV17LflzHkwoQ5p8B73pWdUfYUjagsPQgdBT)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/1jCGSI33FokWiihtE3aYbX74cJedX1AhdmGmBSZmPqZLezpbBjtmJrocW90LlXkP6HV5TRfisgfMNFZDHejk7ULWhPV_6-Nao9lYh648NNFdlc4tCuixjX4o8ealicvaCjDRsqtvMLfK0Nb9u7A_11GNm_MepVfUbBbWHcSB4x16rxNEjAC7CMqG7mJz)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/UMRQZfinvzIpK4ldePWuBpRGHduGpM7jD1Dt5b8sBB8sVBSudiLE7AcxQAa6jjB5QRudToQVOrg4TC8xXyg9VTIU02Yuzk4mSZSvi2I57BTtOP19dlzAsw4HmByJlglC-AzzKgb8wDcQBqXHr6w_4W7Sc8_zsnNSFs33vOaJRpLrYIFWFrtCfG35S3oW)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
