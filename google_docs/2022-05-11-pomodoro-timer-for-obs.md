---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/Gg_EJ54Zci_AGi7fLTLHLyHhRj4QAVP9cKCzprIRptU4d0Owb1ODvnndZ_WtuLvXFsIwNsAVG5kmCIJBtB-AEZTmZiTdu3e2aQ5SOe-J8c9Gd7q_JR-RysifefyteENiRsRx02RrZgZUgaTjghWUxcLOOk8-ED3awf9IQtBpiaOutJz2FUB9dLN0ffnV)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/aqGzOGQs6sQBqdXXO8mrkAZhqsia4C5psD2hKvKOBoMdd7GcCaJHntVbomhnXvDcx6M3rkrcZf826tPqtrsZ6SknWWGDKVv399ZBWF916CEz-Wr-4Mtrvz7NxvDNrfZ1TCzMXBFjxTwqAJ3v3yhCktBmrw5fAOh05xgB4CZ8LRzzdFRUN31olIe4b3D4)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/TR0rXXJww7rw0Gao9dm-rrL9JV95HlU7kTgbpVmAs_drUmDIf_WhNa_OzRzBNxheNONsKtm3KdXOnGFbcYn2g79dkBpdYcWCnds6DHR1drvC9HRGHdBK9nV84cJcqpAdkcsucOjNOooYkVJKIu9-eB2h1UIOWmO2xKVv0JMfAWS6RL0uxc6YC7YmFip9)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/lbpX-yncAPMUsnnk_SJVgr3Y-taKL2u_TSCw53cLzHUitkvl3oBOkbgpVeXs6qeYzFimjlA9JArY04p1uIA-3AdTrXIXzUKKpIGarq-AOAU3oU9rBK2v-bZAxeueFE2rR-fouTpnBHeSwMBSuQq-o0CX_zMjdheXK3eM-tBPJpWk0JLPFt_VYiVHao9i)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
