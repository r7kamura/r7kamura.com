---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/KMBJC4CMDbixWaWFdfpdwUb2akq_sDikQSvN8XXtV_rlc65DbbT74viBJNvSiPylqsNxsG_XjsVUnHhqGzmtTxTdJZVI7djbLZdHcPMer677Ha9g0C0wRsW0EODBmxLYZjgClBWAfFQD6OEF96MMcOUqHpGDv_I1164m7LTWOl8GxXJno94c7Ti9qqtD)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/e22n3KPNA8wM_V8nYFa-tyuDNRLmubPRrVS7O_2G9hQlNzaajQIY0o_oGRJWd50LhlGy3W8JtjEOaXjZfi6w8DopUw99MfoXmvclfnGZW0C-4eaeoVMiMoLSUtEuF0RxgDoWc-2WmUJrw6pJPeC-vaZA4rSmyOmX-yB4xo815oXJOjUu0uo_7jmCmyzD)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/cCudAmHyTCMYf21eCdJw7VPExlibn2-qERPX3_Q5y8cKA7vy2zuPsUquYhIzs_Nno-j1UbdWo_GN7FJnGEVaP8xvQc3gQrhnCQ2Tn7Zo_TAJBSoG8YIMGnj0VZmxkbvHegmAnbgf_BjoIeudHwHgAykz3K6tBbber9n9JkIsEL6BE8LmXJ1M3F3y06iS)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/GpEd7iBv0sW33YTbCMuNQTsKX2A7ZqpYrYXEJNPd4ed0F1pxiomCDXM0siduHfa6F33W-HnVhrgjsYh5C-ybS7aq53wEsyVE_hPUZF05a8vgjpGldgxOb0MdBZNTkA8ItodIN_7Qq7qHMpPQ69sIzlQ1CB_HRaQ9dP0MICvZ2uIRp-awdrPIVdZ4HYdw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
