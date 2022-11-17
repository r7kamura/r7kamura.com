---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/kyiX0ZXFry5lPvkq4WOoocCyo13mM_07X2D0Ry52GRDqn-hvRiBDVHz3t7PT36LOVkZL3KMJZw_9bkRwqZKcAFZG0P09pblo0dcPhp6PphHCBonDSqsIac1MUeQ2f7lJrTWX4EvthuUct7fnbjNSvB6favr7TQ4zWFn2J8TV-UATKH6jNPanfxitymKf)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/o9-rVteBU2sH9Dt2bXN3UJf3SJHvfYK7LcfugH3dQIOcfJxQtZExo0Vf8mywnRUmz0obb4y2AZ4LrTdWKrPEFSoQRKMYYW6Yqn2qVavznmjUSAy3q92va-RLriJI_j2wAYOc-O77iaLWKDzuOX6ROZfc7C4T7TAFSRIS7Fz8LdjdWS-G6rHO8a2x-ODg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/Q_H-IgaEYnCCE9QAsLrqUdHozdhEBKgwW3Y_BoPMkqNg4AXlbaZ_wQU0OxeRymKqSigpsvcp5k8bGqNhnG9vOMRf4-48PJGWK1347jb_TAYKdHCAYkZIy4uNdNoKVOlCSWz1T1y1fV_oi4xmXNcav6K1C02zlaEyzNX1JeUF1LA-Ko_jkXblSAx8EcW1)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/6yw0dKrcevRHMYi1LMQroe0zr3KHOlzJKoW0Aj8ch-o3B8tnaSdgyYtzkTfWYBR6BlFQeIZwXIDQcqsGR7TF3qSqOb8i_F2i-w4xVYEG5A8tEanK2g27U3gWxTjOSL9e-TPNX7L3FJPXIlLh4jnGljJMTjtbkEBCkyyf6mLCuFWo2QRMuu7PuYb5kq98)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
