---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/0xRztSZpheMZs0WbWLpSCSKvZDPyu9o7rk_HF-nhdcAbxH-gvhixCKvQUh21Bdipz672b4D1bjH9dKPv8S6GJnrogKiFLcIzrwsS67rrwTU-u_osD6_LTo5uj08KsD1nDAbYE8O6a0XrWPG_DZ1qFTTcSvgJWKC8wofnhPCtzcSR4BFmkswutynHfch7)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/5W2c0DvPuCertbSnGDUbEE1_a7jI2sSDRK8mkBemY8-mUB0kRR4Zw007Fsu9geRhPpv6WUWv678lCe0kp__eEBA4bU2MZZi19fTh9NiuDktzhafgxnV9PZWGQQPF8xYIO9AxhKmBMaFi5uF8SuXSCBqNPYJHvKC34lAxSYlnaJDezFK2R5QIlYYxFm-V)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/nQvqjRwmSWQI1LJ4jAvTwryfGxAR3zFsPYGZRtfV3TmD8TkBBXQstsJfr1HxSUh05NscY8aV7Cu7-oWjCyqyLD4rtNOu_2FNVF8kQbAx6wDfr0cm8CceSTQLfkce623vZ86jAGcG2DS88yhvTK7TN8VQxa9KksX2nrQCcXeUwhjjs7d1H4TlnyNoUjxy)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/l64ArFBeEb7fFOsmV57hcvwnqz9aEOevKvhABCBQpbxO-8c9qw0kXpzfho8U5HcNped6wYAbG9M2fhgp541E2LIgtMnGoi5ZufxDYetcQB130qfJ2PTZ0DO_u65DFJAw_e2YP19z9SxRa012oHjswZxKHDi2KXoOWZmIXeeApKx9KA1vaDJI2Ok4G3qx)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
