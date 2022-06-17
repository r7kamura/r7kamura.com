---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/8glLgSlnLW7raFJeAQyMlFEf3fd2bGIQrPnmCo8ZGzLL7c5bc-zwMlGCZRtDmVhzsHy0lJvxDrhZETJdPSiLaQt4Yw9X6ef34QHr1qVRszaiBIV7tY5G51Rp5092BSP-6uqUknQH1oEel_64qQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/qCy2waLh5LK4LzEQTE-hAPT8GTJ07cd1rjVAS2cf-cTgAh2rTey15qcN68O6qXS9aLO8J38KPPz2_2vFiAHrTihJ0EOFIisD9JfEq6G4oXoGa9QwmRAaoZQYCuQAiThnmXYgpROey6-kL56McQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/XtTzCEAXnKTTlO4nEze2PaQO_O-w11sdEyEL4WG23-HwnaG9dyxbDQ_fbkdAZ7GhtCHK2U2AaIK_h6QPgwRGDQd5Ma_c0Y_aGPCQyMRQCTzXK558g0mWLMzrdkjl61pJYGDTAS3MewbP9xDELg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/gPkjh_XBYveiMvNqmu1KSH-IVusFftyjWWRw08np2X8xX2pxiiUiUeaTWgK9oHBzS9VItsD7N3XoHKrwauSQYgB21fKV9WZrcYrZyW7mWesNq8QTbcJ74M0Q1N4b_8_E2-GEVMYwZdgRO74ZaA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
