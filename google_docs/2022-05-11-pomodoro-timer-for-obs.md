---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/sH5f41fwlFu-G758uP8vaLINgHTVEp8M5Li5uFIuKiKK8bW3Z0IGaO0c0jcsGfvm7QpMj_8FkNhPNzlddTt5pID3wiHhxQK9umgYq5CGT1KdD5DC_ylRNs2nt0qMNOsPoImqRuThufjc4JgFzQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/rfT_vvRjnp33CynCN17yiME2wkTFUv7HyWo2rwDDaZFxHuPWcca4UdcMMMEFdVdyqexauN2RWSjnxJbuqOzb-PElkX-04_IwvmZIz7t-rm9itjS-u8hkETjz0coZf4xE8WNGWxwnxuLLo0_FYQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/iywKFQ_rYQmCGBvgWrf7j9pHplDuFG-1IlDIRxCRmnGEx67_Aq-eahZetYvLr0a5gvCLm3FLTs-VdfPPbrFZPw7EF6T68YbOHNG-dIaFqmmD5oW30os3Vfeyq0bVvX8cFlURR3gSMwNMcdqCmA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/AaYI9fjTc1p05Yfi0PO_v8OyxBMNz97Zz7uV1Fd63lIHL0eCL7tWbIDn-qSePZBeVpY2qNlRo4SGMminrktd_ajz5X65gtql7fk9mDm0lg1ounRHJBt-EEeQMU6bN0odKbYctdW4LlLIs_LeWg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
