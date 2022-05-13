---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/4O2YIOIQP1YsOEyooSBFIQ_3CsU4TdPvAyY7wzQX4V1_g2ftloP4QlXKUIuwjZqxli4wk7Bqkppzm8mNB8pO-UFXlL4CJL-thNd-Qe3VBP2j0icWENNgmMGkMw8CKAORBGhyFqBzWWWpu_4nZg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/F548iVdWz6m30K9YATAQtFaK6o24WiuAOGOkHAxEdmNI1APU0wF3nyPvaZpmk0dV1LMybsoLkY4OeCPRsOWi2e3WONTV3w63MDd8gsaFHE_RP9UR962YAy0R-faUKwp_VRkPtkAc6Zx4mhT_4Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/eFHctelGwGxgyNZuwisbFqtRfh4waCm1PBYvlJg_9wqFe0rht1wgcb8FxTMrX-8Y210LuiRlZ-8iLrgMSeaWWSiwbSMeSxqjeuskraWXpOzOgbreSQXkRLEG-0moKHWQSMIsQBnkUsB1mDJRpg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/qpZ0_RgRasU_lfsImBCJqvPdYlps3YMUY-1xHYFS6GCJkPNCqfFTkNxm4wjvaoGFZrr9ztJwNsNfJ1IP7Wdhvuql7RL2Onkig_VfD7ka1pNikcfq7fcxR4iYWBzSUzl7MDGFKv8dR2d_ksapOw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
