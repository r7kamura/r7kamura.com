---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/-JUlZILUXGvVUP0VXzjk_yhooT1xi8NByCb66MoFRxJLP5vWZLoZ_m8SifsnddLD2i6DxZyGwJ9OTIPRmPFibMBIEjBl1ozDLrNDOP05zIHg6kOBQp5BZ3fl1L1haTre_Wca5ClAkAmYqCgWNi27_7S9O3VErEPIlS5R_qo-n8WOgjvk_TZK9k1Z)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/xGTZ-jT-axG5ydfZN9pnEpSLUCgnkoMoDeDQECdg33MlwyWnP4AzaEZ0Msg-QoPjblD6zbYn__stuQ2c4HFuuJKKmnttb8kbZb70y6THRrmuw26_-8Pf-FY_OpP8VRzj0vgSM4D3-_tNpAszJsR-uuDjcArdcOdWuMVwKV-fF0GkKcp9wM_gXQAq)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/3FjesXg0GZPn6i4gAPXj0OS0ss7WWUW-byUYP-tC3Z7nvOvM4x7hQMewqIunTpmh9Q3Ujc7-EzMEVuweUoMrQ_TVEdTCus-7y-7M5Eb1-uxRLhNTCzJDT0ppjSHt88EbNYQZJzJMbKYlmFLcO76y-fgxyE2Q5ETlyqWGNqiljq8oduA00XUdrviT)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/tktdWy4v3NVm8RON4kLSDR8OdL1NqfUogmkOdr7Jidjd9yL9Fu8c8Ejt0P68C1ayUXbrzh7qMTDsOci4vyzYnR1d-tFiL6zTKvgbBakRdElyY68NFYxunt0jl-hcX5hcZbIpag8mt_vcarfuwiRil7i1dCBzI2bQmcrwXI4me4trpWi1I-euRTkm)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
