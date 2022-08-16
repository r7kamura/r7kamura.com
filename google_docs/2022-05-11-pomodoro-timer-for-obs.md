---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/KID6Sz0T6i1zwVYnOXUXa5ok06sibnqvibKpAHYK0UQlQrOjwACYZwdQMRD3pVgcBH8Qe_p0WgSbw7FTQhysZFNGI-EPiFy9Xi3Fjtd610U1g2G1ixysY7x1nac2iCZJbCwkbGB74hYmWff38PG0SA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/3SycqNcugpL6LtMbmGZ9M9aC-bJmLMSfnbHAfZLHXnbiLfIe_Cly0CIfbQnOK8sRgKEXPmWJH_slt48d31Odt2SDyRbwuoNIgUTwhMf02w_PRa72kRfnJFMngUChjpEpfTt2irVehk-efEYPU_yoUw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Cyx_CywzaF7SK0VBj5YUrchxiyOXK0Qm_PSNIGPH-3qA58SFjN2c5cUwn0MLWqvWjHnfmKUbRBCIL1s4JZMN0RkMBwGdtyDwruiErLJSHzrn4glFslJAth6PuQKK6Iqncdxb26pe-gMthzdIlLrkWA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/OK3MrUOmyTjDYBm5p36aAFDgXWA2mwr35FUQ_HRW4o-VZ0LHAwvvQSKc8ZOcruOxw_WNXD40B6UiSdYhBQSZ_n_oxWeLRqy-3ybn4D_rZNckbvzFWFoLBMP5suwd2dzQI1Nq32koyxF-v2I5-w-F-A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
