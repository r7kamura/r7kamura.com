---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/4w4gLciPs1OpiaqNPRw3jmrFea7T-6TdKR6L3IB1oSoZGj-Dg6Bnqj-RaA2WjpO3_76_miOZgqgcrD7z-1H5npTZJL3hjPNDzMLaa1uD3L17JsQZyP713fU_uIOYBC2p9siHtoHZ4_Zc3WBsxL-nZ2FhRkYutrW3uWbdexybtosczVX3BuVdwxcl)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/XwgwyaFRzqYkl-F-BwCgzwHuNh9UWadlugGc46JerPEAF6phQcUqJSF7oX34b_54lTpAj15BsLg_rVr22Gu7KkRG--tQHHTFWxA3Y4gWxflSU7TNQQQD3LrTV1pSj_sKURHaUAGkdBhrVA0hMgqrXvGKUssdgR9w_-GHjPMvq4N4cyQVWi-AfjJd)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/zrc8jts91puT7b1Tms39hJ4rjPngqGDyU5HM6J_do9PhVDUIhlGmbTj9-5KsrSM676q2T_49m6gC6RvIP4dpK6dbOYcFCOwZvngMxhGwWxOnDjPSU_FaqTQAQP3DgnKxYE8Tu64Dp7QlVAOaZfVogYCVc8C9pH6XaPB3lcdUwap7ozuhL3JLz1SB)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/b0U_P-aJS7KMFwZj-Rkgb5cF7t6E71qCfcTkLOyGhQYYnOZGXIHpA2Yt1doKKp7SHFs1jztHCuy2j6qEWpZ3-nIVZW3iBUNq7zrgsltXch3S1Rh2OxM0jP9NIUjgqloT_PZUQjuTdCvRzcQr3PgXzgXk8Txw2rzJpuJbSvgDqjhSr7sz7Im8wrCk)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
