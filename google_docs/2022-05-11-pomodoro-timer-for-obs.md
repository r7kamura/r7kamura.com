---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/kkJxuDRROYCWXD2YshJJk5qZq4fOtOkg8uMcxFdM8Pc-APOMfzVlIEVHebVbVCj1KPdvJ5TT59eKV7uRQBSCFBZi2JQpaM7JBePyfGivwDwi737Z2cSYUcYr8aaHIYprXgcfIBikxhaEEYZiG_c9cicbSziVKANwISrQO70-uusPkTABjnH8nZeFm6S8)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/8FH7mVeX1c5YG-ebH0ka0mqgUrFByYpkX5MGUS6ERfFX_DZf-68pVVlOWZlbjJcrJilPUVS_-cpHbrAeMF5LyLx9XdbQSfS3w9l6brPfN1O6B_hc2RGi2KE6RiLZugdNm1o89WxEYdveM3B-Lel9sSBXywrp3wxMTY_M7Ms8lFJc2oJ7Kp7RY1yZLaDL)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Uq6wkTlq7oyxawTJus4G26TvXN9lvcG6e48wm6-CLlbV6FVi9sGui4gCQ9JZ4FpSgMKLxrPSIav0YO5RzLgIgI4gZvKp4mBtGuewnZ_bTBaxtlU7_WmvLt7L1u8YMpTYXsmpUgYgv_2nSmt_MHjYXVR3jUuC6mefVMxt-xYaQW0zw50AugXc6BpW7WlA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/LcW6iE5tNpx1CtOM6MAbyqAXZZHWHlTZ75hkNVObFW3nvaSMGDJ5vUVaoZQDOVP2eLx_RKzuaNFGGnTCjzusBezgwNPpVpxENOqvX0IGenCUah_Sp4JWQC1kZux126JctEY-veO1ryTxOMOXNY8-u-5h4znxVmh8giBjru5wTYMFcySxTJeu2fNvX_Dc)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
