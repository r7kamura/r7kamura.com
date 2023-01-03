---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/HzbX7KSW69_tPpVdpBGljC7S8OojbMbFMWD4X1gUgqaXdCtEfEUltAP1FTrVKHPMGHG7chdNjzrJXNiximNj_GDTATy3lZfTMK1MymFaYdom5jNK5HrCwwFGn2XNqs3RDNPlLCqoP9bMkR_3_j99GuJ9crUFC3oPweEkxPYMW_lPLl47VBUN6eaux7U4)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/3tjiNrCxfsze1hEE5iWnvw1EyD5BOAp77JGKxaCoTKhhiI_jWNawyIakZgo85DkPZRV4y_rwkznv-ngz8AWebcyHpxHhxPstFYU6r61UWQaNvJR5hyGR5JWM_SlLZW-bR8DGDqFobR5ie1jTgTzwj1GLvIu1dKvbxKDTPw5IigH658RAFAFqS0zgPspI)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/27L309u2-Fxdi4SGK3obAHlm9VoYrMNeh1VKJoA2f0X3jLlAX_Q8JcckuxUIUWqx_Ltr66Qj8LcLVEfx2Hv_TfsqBiFlO_VPZf7IuLNGGrsc71vFfa1jS5HGS6Aenpe1GG5ChGUUDqXuCFYCL4R-zMv9BMKtUaZ6e8wU6Tq0cGVBiExhf4nKmPUX2rd9)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/qdVh9D4FxAF0I9s815eBXxde_PhyB-wEvKO9CUFvlWuY8WHxh3B1rsHo5YM31UVb9rhxz8AwTyNcCPUvMGxVJKQKF94jPE_LNUNC8vV64O5RNDp-C6hjH4c_gd_aJ_CFr60Cx7jUOAMc81fEUaQC6idOrEeGcw1phQ9xWa1tMmkjiJfna9tD9FFwdLWJ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
