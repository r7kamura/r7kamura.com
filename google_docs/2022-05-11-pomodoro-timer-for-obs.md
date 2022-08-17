---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/A9cpejEIoAgUbr2vInbPp4PtYPf2VK6hXj1YiDZvs-Pwlz3nNl7oEd-voLgit3vUZWL-YOTIZh0ELSbAMMOx6nXE6Yl1NetphDy5z6JEOaD25BdXFhQUS3gUJKJfTLgo2rtqinX0IW9_8Z2fbJkjvg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/yslwnRAN6ttu64P0KQw4WUZbK40q8Hlokjm3xzJu9B68cR6BGOaJ_4k9SRdkCopSUAsfy07wOoTmSScw3nwlgBRYxLv9N9d42s92r_8H_9swA2xGjQZ8K_ZFBGAVls0jpmoMeIJb8dbWdEgOBHlDrA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/hSDWKh7fp-4YsqDu23vdY59zn76m2ZxM0tJkd50Aylwg3NbWy5bG90zl91RIcRR2cchY1MaRpE_eMedSd0ESE5Pg-fjFi_rDHbU7QjdReYYw2I2_iNugzpbKYppH2eR4IH3AUqpDIyP6Vip2Q-xBiA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/0ATyrjP96tlRHVNnkFcxmcHYoATP9mCVCNo6DEoMcOAUhrRerFLaWxMERVeQ64pvFvui3Yz5xIA1vTeLs18TKI2vjtUmw1dbvNBdG_j4OKZ8WHb7gL9oB31uMgvfPeTFSlgW0RPmymYoacNQ8vfoXg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
