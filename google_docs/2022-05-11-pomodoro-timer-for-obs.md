---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/JDp2V9nkbW-pRnJk1qxdGj5rFyUe3PVvo4IW7ToTrlkKqcAgQm3DHKN4cjnfECH9NpH5y5FJJ0mLZL_ySIABExrXkkLBLrUDXN_UQZ5KdCxJBVl31w6ov2zYlSY_9W4mt1ZpV2cCRQrL9jk3gA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/a_kW8f3B0Z3noNq8NU8nZm2gj6CYMzzOqQflvFDvFz5jgr1SXev-XuHFvMUGpPSLun3-iFesQRA3mLWG3nzzLiY61-Hrz-ZJxd9DSqFuXGSuHubNC85xn5obJW3IuMb1jl9aAhQBl5MQV3C8Lw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/9PWDo6wyxS34-YfturtcenNhVRlGYfwhLzzF7kR8Js4oINsOQwI3VBEyp_ZCUu5P6BPz-0rqXyxVHflPJAJcXuna5jnfhtniPY1LSzndkQJJjBuVbo-L_pWGOHGkktuaoyxuJTjnA5P8uWofvQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/iGCvZqdSrSQBEE_aAvEur9r8goWKCxj9iwO19-BBI_iuIzV5rU91UL8lH0dYg-N1-u1Y_gkBZItdmqNNdus-9hL37Xl4ZpU0TlAwS8eSeFo3G6bGSZkku1-hMkslS4Jv6oL1DdaiGRA1Ck9_1w)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
