---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/ep0Htu_sg9-LIu8O4xEfk6iHqmJw4tAzkTVNmT6ZqSYNyIYbW6FEzEPeg1WVQz17Cx5XnxdrUy32dZ6R8Mri09Mlns3qhFmGupw_ePW8Y6xD0uxHHqvgYEXOCqIicr1ML3sUP5e99PUAsUMCvV7Oeg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/RtVEy0aakf3m0lGU0hwzBPb0QBF6UUmYH-6woXkxx8s34rx_B9mwptrKbEIlZ3lj5gnFUXpKQW-6RisnUmwq3Ye6Gn1Zfv70Fs9JcBopeKWHhu4uaTY4lOS3jgdVK5U5EwnhPssgxtY5pAIlCVrwEw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/THxgB6_fDlaJvgPF4TIiFOVAe7KZMweUn6S763R3W8PJIanYWyWhbmDECE5RxlqjhZb4B8AtQ2MV0k3hanm53BgUbcwZhCrIJM1HIIUXthD4ihB3kRTMYFz-Poplrk2mxCwG_n1KgrqSnenDqYmp6A)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/wfxfuOTn3audSCbEnugljP_xzVNJPAqjccpoz6aw6XSYb-PaZbI1t9v_jnfpLxYGCO9_OHX_BOiRnapvJkfU9-zxo_XUDkgHUBQj7LcrH-VqYWmocfC8Y_FdScDutbj3NKwBQiK_BpgcOnSqwtdKug)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
