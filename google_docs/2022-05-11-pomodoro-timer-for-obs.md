---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/x7APXl2GHd-iqiN5qvqBiuOSmSluClY19t0NLYOzoS1p81fiFA6Wx-JtaAFnceGRJ4yYQXvAeO5m_9-my0IXyhyl6FrKQxGPHVs81fpeqfxBfSp7f7UtNlHMv1BBwILg-wCP1ZfYJEh1QRDXNscpBM-ZMar1dg_brqSOuFcV0Dz8zhSq0Iu-63w7WWdu)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/I3TOBA4aVfr3fVZ3vcC8WU-KoWKpUqdjU15vWLH66L0oI8anuKk034p4ZbIts9v4hzmmeAp8f92c_u_8Fj2nUcpjo8rCph2UCM1UmsXcrRdzr1ej4qOVosqN-hSxV1kq5UkgwPxAOlTbP-VMnxd0dorXv0RsO2RkqHhBGrAJosApwYJQMC45httDKKS9)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/j5tP7bZ924SOCucUqehQycduFzorTMRS5L0GPwU0LMH-tnqyM7QqPMbzFfhctR-sEBBFoA5i1nxXi4bal6H1a1Gvzva60n6dvmt_HREMK4ZTDXV8JZnqTdtiRAFig5TJeF1AnG8idI1eV2EIU3e0h45k3eOtjsDSB_XxEcHJ_bgSxqPbQapiTvIFlFnv)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/7UoC6aZzo_68XeKxivoAV09hMMNV5_LmoUOf9QR-lmi8e3ONVzYpAKNIpLEilKsCL5Om9LLKPEEkCUx4jQf8QqxDvdkbCsMFAnq18nf476bzz1V8q6KQVfVMQZ1jvxCu5lpQ-XHcyWxL4CCXnTHIYlITQUpGAsQVG0PzrVJo8JKKTB9Qif7UPrkGWERg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
