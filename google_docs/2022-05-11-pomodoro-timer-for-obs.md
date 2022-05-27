---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/_lAtpGTEdJw5NEMtRET6fgkjYptSMRXg42Ci1ojuzYkM2VMxcJ-ASaJZQ6Cg0C9kjpYF9xsT3qP8cU8vAB5p63QhJlwZra06AV4r9tWoiIkurX_sV2blsPSZdipM0z3CGghi4w6N3l3Gs2PqIQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/fr17CE3Ed39_vOhL7_ekkh0Im3Ego9uhm-nXxC6NR0a_1xAjkOmd6Q23NmCHN8sYThArca88h3kH5ea10BuLz2pMHmrwox6POPU3yNhTrtt_EV16rxkdJ7m6JBrrODPg2Jzb_J_8mtbp6-DErw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/rIdUxx-YUeJksJxuoVJ_AVGdISUY7d_7deCr1JOb3kcO1BpJUCZ4qg8piHzalYY0bC55X5g9RW2rEo-sdjkz9dQxolYps6OnHPx-qmDMcmymMH9HL-hKE1lzOxBgbHeaVu16vFxu9Rlisepuvw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/O6R-3hsOzsUmvR9Kes3szxKtGhWFV9ZoDj6akoGt7T1ILvmJe0Gl_mSZ3D1v_83TEBPbwsdo_HU9SiipynjJC2VTTxaK8O3fsUDA22QuetIfmytikaKKRwsaBqzKyWNmRb2KCkHUyNoHAEKuYw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
