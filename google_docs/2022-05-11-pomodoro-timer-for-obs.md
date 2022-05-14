---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/RbBfFE0HtpM4hjC2zNdp0TTTFlTN3pwZ39fmczC8McQ8wXeHJ6Tpe43z4r62xy3IbpogWYYkgQNldv3JNLgMTbfis-WPaz9SqtErzk5QVMg6WjxVpygGVdixmHc_WtbHaaSvNQRnPLIIzX_Pmg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/_aVsm-2pJlxFVROKhoIQq19zwfSkCOxzFVYy7p_oGjE3g_lNjr7IIp2ArzohGSvX3vh6FFX9hyJR5T1yH4nztLeRvj80CBRzB9l2sxMLn-K5RYvCmhPJL6OtpddEcRJYsBTKhsrDFGf6ko1RvA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/SEyr41U1i_7MFj5dUWPkrRYEf1OMi5AMMatcnVD4-iUw7YK5xWGLjHTZXavisDs8BP4GTO6UJAbo0J4WfXY8lf6N951_qxuPHuJV3O5QG1lCjNrTmUcwB8kCzE0JhRVasXFjyfhTluqGStUvgw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/B3e-iUzSNGf6j63kmc_o2kq9OdyswhdVuVQ8yTHEuxHaYSj9CU3ldkD3Sk1dx2DBZda9ds-yv5PbenR5IuShI3FzaIcODmbuTTtMKZ4FIhS6y1M9KbX23bDfFk5Tf0wEyhmkKh2ULdmU14435A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
