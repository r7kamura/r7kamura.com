---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/YtkGLDTJp4XtrcsvLKsjOL_QYNs_zats_Th2Q4s0HMeTYfRqDV-b5XEq7jKuGBDcrULzBgGutJpQ4E8chbfZEnERodGkxc8Qmxvw5uvuMC4bIgBp35tbiO8r7kL8olos_Od2jxTFvJQAnx-h0OtKvQafGrVf5H0-9FgWcNCrgHlHVhRoHeBBlSh_uBeC)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/qvfCJQw3u5qIxvzwO8ApG8YcX-FHTYePjxNnWTRjnZr_LkKqmOMr6xVp7C3dhVmoFe9rypKXBaKx8MqM8AzDPvw6BOm6wC9Ovb7E1nFYwI8BOAFHzcdQtliLixT49yo_49qHG4YMCphkUYf0vN9cWSXYqAvRjg6IjGfS8LSYueSJdubjpvrJKOqR0dVY)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/xA9tMhAM7NOgB8ZoHOuLcb_e4mtGXDEpvg-W5z5uu9XRg7_vgc4DYIK3s_bqjg5gH-482kioWlHrZM_kZfQEVubKtUl3XO2-_ckXXSPozSitGgwpxaCj3nL5NoG9mIDb065EQuqZyhM8iLzJwgAT8AkqdRouM_Ff4SRPdqC-UShH-i0psaZJuoMg80hU)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/_xgldog0obUoitVdjveX4Zu34h08YmxFRyzTc1niBkAh4sIuR3lCzlx4bx2OkZ1cbPSruvdev5C_-f4qCLhPvhwXDKsKV03dlDJsR21JX4XgW7ZCPdE7UtbtGBNjVmLSCZMJV8Iq6M2HJf6HSg4OzPQaYhVcM9lKEZ55OxlizkyyhMusm_ua_SX9hCbR)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
