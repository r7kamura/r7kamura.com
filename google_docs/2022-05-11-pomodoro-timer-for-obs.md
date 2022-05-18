---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/Bj0era2i05FPhTDUMyJFCiL8nQ6mbJTGtQXmBB6RUY61VOOxTN_3cfBxULEANAawkfIg33Y2dsGnbpwFc-WGKfFWPDBCafDU5k32Uzw012vaj-aFOoUvrByP9BlXxb9ycv-XHk7CsXefPXvR6Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/ixmv4yDnk-w_GoStGy5XJIFyQh7BkA8bj0-1aDWeMANHCN5f9_9io38elTZZCA4doN5c485iI4HSF3VkYNRASpe5a8-9xI39rFg0jF1BymvM-QtMBPxT9ecsnOsC48d5vnbWdqdabxr2b1KR-Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/l6mh-0lb25itxelQHL4BN_5dbTI-gs3yCVKPKeH92XbTf7YswzoRtyUGkBr6LCiAl_T4Iem0THEIuGuL7w-UvE7rzsZBLyPjlyVu6Yh6NGDI5_00684nsRXCgjDB63dpaacbtvRKBhEmUfGjQA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/adqIoWegIVA3Ki0kM_bxmxMm_w7rY-wCxA8fc5CikXlYKo99qzv4ztIt0Aia5HDCCj8XoC-cGlQ5i5jo3JgQp2NAXUiztiejlcG5aU2dSmTImVoWURz-3K3yFifPJjxQIBg24vHkb3kIM5p7PA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
