---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/x9kN8yL5vzB4TbVLOpm9K0ZLAZY5EKSAqKM_V2XALCVGHGNakQRogg4ewJJdOgq7i4HVDGzMf-aHumc8Q66wGrgRbfMVCzfkKGnVW_HAFn-3ow7XNFtfPs9ZQvxhjew_kRdxuQR5csHbGrirtqeGpZR35mATZI8ybi3yaQek5TAgAEvxpWL0dd6a)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/RFX42uQ7s9k1VG3h72-5XTFhmm-sNr_4EbZF8zQuJBJTnBARgCYwOSiavReTpFKn4K_wHW7daUyoRsAdw3JP6lWQNF4HUSY1hbmVYKfnbIhpGtCj_xr5wD000FyAX4a7YCyCLR7kZV_ntZIudWIqT91nIlIc5KW5e1jJvPrwBDhoFx7V5CkbSMIX)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/erysFrfNvxaRUiNPqNIhGtKn2VHVeBXrbt_6bWioIjFGGvrf3okS-uFT5LI4A7yrX62K3ns6oUmopo9-fwywLGqNSMoUg9S-FRPVLnCAaWiWG4NgZfKcJayX_bEo2gMjQigP7lfPo8UuKpp6Mi2B-yfYM-QyeLi6F_kmMA2G31pSu7NyKSClXR4-)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/5SoDxdC0EM4UdbTa-RQqSUQzvPGIwCIUKY_a9bmopkNaEWpd7k-KBND4ncgIWkK_ylYAhDM5U5yiXyiVlanmWFT9-oAEX_WGwlQ4u1ZJGlSqSwYKsoG6Ut8IBPXNRlppUOx-eWfJ8owsXNmw_FQCmcAeCvlsbhliZSqqYIPUusG3kx7-NftBd-5G)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
