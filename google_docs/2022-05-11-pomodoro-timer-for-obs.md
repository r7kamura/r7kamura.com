---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/qml0V5-a-YbkNVmDIWMRCWC_v7BVmzMGy4JL_Qtiu3zlHTKqdXcPRjaoolDzcOeSIhyJF2Ic1nEBvtAzfIH5-O94iNa9bO6MXM4pciZMw5cz2oRbVg5IAvrApPxJjdkMw_YcFUx1jO9YDO9yAGaqxm36dwbVl5Se1vg0v-d1Ly2-Yrun6wpO9WK1)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/myJtmTdnR22TFv_G9EuAzwZMLaQy-SM34AdgjOuP2F-FYw-LSnXI7s28XC2gIXjt2GXZY1v1L4HEkQAKHvkA1TG4bzd_JGl_3U-r_f1KQXTp396ZjgYJTFkSM6VJ3hYEx-Ny5ku7GsdC9z_LEyZxR9P2kWgDUXTBrjxvI3A9Jnm8YM3SS-9YRFPh)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/W8KBaHKkEp0k4ktvjxNORg4EfzjfKzE3tKTSAZr6IHdTKY0G926wmI0tYn1188ITduCYe50OLpqebh6Sdun9NjW_jUNAqKHd_t4WTEXFiw20YdCVAzZXVgI3WHD1-CoANoPomgo7Jdw4bVubRRcu2i1X8UdJ97NauouOPiVJ1M-bBK4zDX_2HsM5)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/IhJqqXcg6YAyDWc-wt5c-3uaMrrJNHHji6KxngU9OO4cGf1OtQSt2-gbg9fzvjCNECCmtPDwKOkYp6mhUvc6-d8rlleXAWIQQhukMPEgruUyE61dRmH9MzcNlSISIsijCqxATfXTUFqqgTdXHqKu5G2er-Oyt3Fd-q-a1zWDQysEpYFrL_gtsT9_)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
