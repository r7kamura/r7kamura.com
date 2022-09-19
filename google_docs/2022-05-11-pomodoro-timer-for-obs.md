---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/Q-503srlXMObDUI34rOdU34GNMxZoUsKA4FgZ3CtNx9eSyc-tv6yD6-o5ykkQTKE39TfDfCAsdAZAwSXj2315GyiRx8pLE5_O_2c0HxcHZAib0FiZSYFO8Xk1gnoAYSKhFvXWY_o2tt0I2vAeaKEgihUE__J5b6E0pP_qbCSNEJsFrVcHvQp6vFc)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/gF1kOuTP6K28yl5wVcdSGfSIia_SsbOvOjLBLrbx4D0Ubtw9OBjnqXBUA6iR1cZworsKK8eBlo3fTHlJ8cpdQBvnpwUJN-ZsIpgydMFw701wO2YNZGXfu_oSVAkgThwe3Hi77W0YD0PVEHKtCnrkYkPhNWq58zGprzGYdKDuxggMlvt1gMBoOZw_)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/xzV6OmMDQZMMDvKIbnbR8qy49AwITgvWVJfrVYbvEe77QcKPr5HGH23w_mS4uFKsw4CL6-6HclUZ1KxLN1mqLqKPZYyhBn-lI4w87Z_cxhuQ0bGe6Ed6nOGBRoCKDTqh65nNhbbxPT1anT7VrpO-vgDRv0EIRIw-UX0F37lmKgEnhGcE4g4iWBME)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/gBEgkNxbU51tccKx_AXrmmT2WvzcCDvja94etR4uC2SXzld5dScmXsX1Tg1k5Z7LtwRPxjKXhMg9tfEhURalgYA0zW46tJvMZGBl2nEuQ-i3LZdzReZrpWWBsyCjAWw6sEg8HD2U4VVcsbcfUmsfQuCEHzqBp1uNhjAhAku2NTqeulG_FvZ2EbTq)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
