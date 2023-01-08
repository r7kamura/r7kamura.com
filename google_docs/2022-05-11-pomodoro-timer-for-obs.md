---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/_S6lpsY2qVqY3oMTVwWvjKM2vYDdsNIxCvP8L5mbqnFF8CUpgvz-0hMiVnZSUCA7cNqSPvIV9ys1blN4Aea9edL5NqVPWIE1_cJAysKOwRZSGJZM4gV3ATc9UIUToiHoUmZRT0Kg_Dkxtt8PCxTSKuUQvS0i-pIylrkMLc1E6O3lRvCcYlncsBfPMbEx)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/oY1LA-zJ73LPU6KJ9hACdX9DG-Hrb4oWqnTR1NefFQ3GWsxdFiXBzAjciaG0Fb2dI20k-xSJOsxfl8SJtSEQ_rxHXWNa6p0pBTk9gcaLmyjjel88r3x8jSNlZSDheITCgXqKC1_4n6s3Wnjkv7GCNAEfff5XxfwsdPl7QuPFcUnkfDjlXBJcLYuokydS)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/dijXpfg17MpvW2O0T3TOXS8DbEWomlyF3NHMXZqGOKzaxBupqOK7WHDHDBlZwzovRAJtsT_o4qlatSTSTz6ORyfnXkEB-0gfEtHlTYHUf-FMagE3ut9Dnti16pWFzu04-4L67Xm2CSUsuIOW7wOxx3JaxfxzOM0AvfNbwDvkBJwWX_ncKhog9HUroyqs)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/Mop3rX5nXOYCIJeF4M5IoanZuZpeP6QITMyd7BvAaFvVRk9GZ_yjF3rSGCJTlgF4qwn7Zyy8DKVoIGtRtRfMQ1VEz0sNiVZILeOL3nSyjy6smhiUveU9y-m7dCEvt637K0mZytbIhoJ_Cy1atglAPBXCaosE-vlPnwiYlaCJbcKw5z4WH_peaB4gI1wN)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
