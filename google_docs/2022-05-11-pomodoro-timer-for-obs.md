---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/sf9nWOxZDKLFEiYghlqHHGSFiZXyJ-CuYrW2e57sut16oR8S0oPFQdL1N6VYQDPk54kphCJrLIRNyoTQaU9S13StbSmgxWTQUbxXGK1lbcO7YdFLAKx9BWCd_U-TKn3aMlwsBt2x_Xd18oe_M0RZGAGcwRG2xsYIqhV0CiP2iBx_XhR1YiyErcpL)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/A3tAjSFev1p7xCFmbQGCuv11srOTWnj21c_3--CNeTbvsQnGJBJ-UrLs1jZbTQvOG9GHDtduANuQTvthtfIclp5l21Q2lxEfxI9z53_hLwN8mKK15S6JTEMBbxuWKt7gMNnyH4tWx9Rsu18JQ9RwX-bNemJwQtcgvosA-ddaKC9MdNpjBTIJ1FwP)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/7AtWns0jUeabizJCrP9UbbAU_U9W9vpw9fQ5oYBEQW7VPPFipyq7FengUASAOTap_daqV3cJ2kqqrN2v640nO0BeE2tXlc4fJYswQu6qTbXqAkv4WE-4yuSNIky8fjOiYqRqcJw-XkgpyzdjqzwSExvvSHjCM2AQhYB5lwCOVnl4cDd_k8atNMRd)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/iGha-FAPUBPO1KnwFNOFcJBv3eu1OZz08mZwK05ZmtroKUoLUh3yKS1znJGEbXbvT8DQ8U75ru77YPHdTrGA-TJ-GFe8BYYoGRK30-IlPoX6iKA_gGcVD-_xOnF2BYNoS8JF1Vyu6mAUKWPWvH9RTDf7lOlYm3cuB2OVQVhkQzlhhperD2LK3f3m)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
