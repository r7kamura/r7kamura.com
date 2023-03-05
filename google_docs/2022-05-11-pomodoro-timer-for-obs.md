---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/ZYKGdPXeCQMJKWc9jmhVA5rm5xNfWDgbRYEGbqbR_1I3AbI4HiP24ySHzB6BxW_-Pi-jnt83wWVmPgvCkBoCzQ9wKL7mNXkxUSy76JgzdXlwf6Tr99gA_X0PRzAoP1exWxevK_Z4gf1TRN7G1lVDAw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/coyyGZ-azIOlzjIe1tThDPV8VH_ae4ufQvZqVQatprqX1MVAtKnyzJhv4JutPNxSA7trtzEmGv8z8qLT9ukSmck_X6NQV6MOvpJFKKnTan_pHUyKTZPVHPyZCx1h55qcX4qnnG9GWrmgYBePD31IWw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/L_E3Fvu5jKoHMZYJPDsvQncNBAUMwbM7Ci1Sx4ssY5gh8egFEqzQej3hZvwlFb6Tf0hoLVCVKXogEwAKEm4lRz4Ll50AeSTsIglrQ2_jQo7GawCen42lOPDW2RcuOFNao8YF7hbvBRNCB9VRbl_r3g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/w-J3MRZE44bHm1RA1XWFOnB8zSouO_GwKIPkWlnqS4oBme0QKprSQiIxAT0AzKTLs0Pbi6oPHtt__N5e1h4Y07Hi5Ah0fmJVqeZNNnD8vVc8_wTN6yv_sYU14RE67aPsASK_VfRPiTquMuq-Zgq99A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
