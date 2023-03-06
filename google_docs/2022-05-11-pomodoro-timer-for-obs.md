---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/QQLhWUT4nDw4nFXSr1YjRoSTdX30ebAk5vrcjEaokHNKOWsa7ngO5CqAGlBJn6tAHPWH4lttxh1uXSDAfBtVkeSS2P8SOdGpJzvAXr6ngH0NMJBg4_O4O1DUgh0j9hF7Prh8hc_N_wZ1EC0lGGFAiw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/WKEg3F_sypfjnChqb6oCnD-QOxEse2jL5reU5r5aR7K3nHGLBv-HZjYoALKq631Jnq3djs5qfmAgNxSXTXmAZAEbgp5K8jcuJ5vEbs6AVCUlrGC12CvaYJKEtEBdkc4ED0ZHuJaO-8rKYblBkGqtpA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/SVMWXPOBk0DOmxFvHv8-v3vKs7MCUIDpViPRZcGQKhIwQmh6Gd_yQMSXHMSQeLWrUkNaz3d2-UncxxDmMWIUPZrqVRT0dLGX9tP6USlZ5xrSWKOvWCz4DsvLWEMFeikqkEvu81j7IGIgz6b1Zf8Ayg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/tqv0WSCfYZcerHI9UKXMzKyf9M4jSLwZNpqLQ8pihj_B6Nqu26qMgSNEoBmnhoj-6_8OeFF0stDnbJB2G1igQWQBBPo77QP0stBg55PmDnaSAHvsWs72O6PZteiAfrpSS2F2U88KPEuLJ4eFGlEZ-A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
