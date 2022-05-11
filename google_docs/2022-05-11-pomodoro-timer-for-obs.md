---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/x_VPrx_0Bky8JsKypjIvQm6r5eerBTMf3rTF30IztP1stxEumUppfYcEt6NyQTqmP-ElNSkbf42u5662DqTVq9uWe1KkG8DtyCk8EfnIVRqhNCROLnA10hbEm_A9YdjcNVsH1q2KVMcz2gdPFA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/VxGH9dQMR1efh47W2o60SK0JMAStovP_zlB1338lJIT4d-UcdQu7RTD4F-68sU0fGcHNAwwPqHbVP2AzH9VH5qGTHoaaAHb54eq9YOyMnHhxfGIuzyhv0Dz3xVTpoyxFsA8ixBZUnMCVcPgX9w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/2sth3tL9VaR_pVd0UvgzUoL5wpVwu36SJ3gKl9lITEkcisI9CjV6nPfkaM-iMQjiqQFiDkLdMuWkQo56oG7jWm0VXV68PCMMPN_iQJ4x0z-3_J1A35vjXTtrL6JEJUm9is4UVxE8n23xgN40pA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/Ovv4222iLZ0ZWM-AobaosFv7EK2B6XilhHyzUjpF8raf3gEfw5FrlbQ_VEMOaLyV0KE-kMI3iC3rDL9nBANEkTn8V2z3AGj0D93X3g7wHSRWArTKBSg1vCEHrjHg2OOx9JQ8QcQUby1E_JauMQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
