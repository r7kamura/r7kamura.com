---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/r-5Vz6-1S7_vf4Wdzjuto_4LZHvtGynxi8LKvmOZzlPDsDKMj0Jpar4ou7mxwGRX2YuTNS980rmWizVz-pGSCKAXbrXKtuLgFfQBiTFiw11NCSQZ0Ka_uWifoe8QYN2ZLcp6M9FnafYoFuWSmKHc5A)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/BwfVWF_6NJ-0YJTYOa2lQmT3TiwwwJjDbUND-pCheUlXW6UdW6KCXYh6J92uZ8eQRG1ENLBMA9Pto5ZUj4ZFh7UPaDhrJF2CkXptznalM6bUX-Yl5hC5iVkNu5aSb-9iit_sCH2m5HaTnwsb9d3dHw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/hB7yYxkba4Mj1q-rR2p2kxy9ZB7zq7ez5Ooz6CtmcI2TtvzZgV_GUmNHQLLrk2dliO75B9l0mhL7Dx_mXYV8B7yCJen8yPQabGST2UwlgENVkoTm-hW_7FRY2-d94vJPk-Sz2ph9uo9AirQUqxeFUA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/5UhRi_Zt3yX5OhjOmantnUVDG3e7KB-N5SL1W7n8csdrjXeC4ero_rjRn92uSaLP1YOIoagu_BY_Il45F3wyMd4pe-oX06tyb2xQzKkF-NzA_9yOTvhiPwMan9GrROnMEVPahsrglISOpdXb4DSixQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
