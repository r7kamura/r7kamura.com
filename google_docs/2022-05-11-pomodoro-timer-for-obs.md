---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/igZDR7W2SanG505_j2NndTYcbliwWpfh4whdoqR7XRgZFxXXQ6DWLP32PcqYMiph26OiZZrFWrBBm0Yek3nUWA5qPSHsOphO6AvOmkoF_LMj0V7b_p9rIR4Jr0JQ6u7GjyBHApnCMD6l2pEB3w)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/RIXiFFwqvJLP7SL1201L-QAEh13KOrW7B46e_zpBw-Gyr0coRmtPx8q3ruRN_ilN9S91jvEaLg3IX4wHsF4VCk0v60a8jDvT8ozMaglWON8FQMG_XcYy3QLmvdrT8JHF2XucP6nklofE5qrQxw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/PN2Cb1xRAc7RJ2i00lZYJVY2HHieRZr9sj_f7o4NWNZV-lxRTOAx6JTR9tyd-Vg1q6_o7mX-QWl82pbyplRAlW0C_iCym85_TdujkXR15dp5urDvO9sSr1_uoNvoD9NyNcx6rWX9R6TZ0jhn1w)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/u8ixiiGiJKI8OJU3DgnDrnC1ENSC8W0JxbsLnP0AhK9orL-s_BCCCe3bcF_24aHgfxqULuGcl77r6k2GMUuAxoeP2GlurmjKx__gKgCM3BzGLWkUvzW67tIh9wmqWFM0fC5gGBZ6eZceQZzh1Q)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
