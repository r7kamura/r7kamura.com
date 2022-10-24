---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/i3FJBbsGDXvPPgeIZgd5sse1hLr1BGFaAa-_Zh1qcv48QCWu2Bk_ZuKdWm71XZQ1B2ptu6odZNmAUjYrjxY0lxLJJ7BGMzOj4XvmTKZjQsAoQ66cVUsd_-YBTL00yERyK5b8BvacbACl9ydKCFAHVecE6K6lsjl3UKQhqe_3yuT7veel79btUTm4)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/qInZD3Pv7PTgO2SgqFSWjlf2PW7kdPKHYL1hcxbu8-rBZBSkzLz2Rzlez-PeX3HbhNa9ZOEYDifNIx2G7sKiVs55w9nZJMD5VPaWGD9iwZfljR-F3BcoPo69vxW9X9VEINyTyeMPuKPJWOQiFp_o7yBeURqIq2vS5SK6tmtlxOxNDh--yY-v1m8C)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/4gT-1V_bkSFt5WxgMB931FjQpVfMeE3PiBaKWJK-LrAoAJZEpcoGuE5lMBazgo1c2TSMOKa-vgRtvzlwyhLcZW7Fyh22vAPfL1ZgMn1AEGR_D0iWCmMtG958Or58E4FNpXJBEf7UXfoPVV4jJ5_3F-f17ubvTYVgTnyqjbgNgMxuyDkzpmDmcRRn)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/Mm2KXvHUUrCaSGeBHj7WGNbmCb-DyD4wyCwN1UVE2Y_0aHCCXzpELi5fVOUJmSNoXSgurBXtCvJ3ZeHFZN14ORq9XrE95L4iS06crhPetRHLpmpzfGUBESeMpjLDa0RREqOyYR89-t5pyfqiWKxXlsjpJf8BHo7Ez3UIrb6iMM7R7meXU-rJtYaF)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
