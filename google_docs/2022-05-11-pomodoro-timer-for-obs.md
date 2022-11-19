---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/lLzzWmQKn2hPIodH1vVrvwlhnVOPwXgoAoA4wex7KJnQyTLHD-AW8SRGAm984D22RzsRk26VEAtcKBJFYtsLWEUpvUZLSiIM_1c1fZL-yzDs5suLDA-EOkBB2uGl6rv1POVl0MF9T8JI4DqCSlIUJK1p7HqjVdxr6bbF7GcTpAHRSIRTQIZ0GEGPo8kJ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/alxI0UjsPz-hIqSCR3JJZwPSQNoYTWnmQSg1PA47RfRddtTZByrREQSwp2g90gDrKrkcTJuzVkNKW6e_Sj9IDpw0LiUAbSEETlYH4RQzfJIKTBjxqUMBkexytzr2Q0gOYzib46-AmIzboDDyK2VxJiOjwxIkQcGyRd5V7NXtKZrkmgJ-rpAF__BKwOGf)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/xpcwThL9E31X4V0rcE84G0w6rMHvnzFW2s6yzFCvrjFA2FztS663vcxfSjmKZQxUrv_fLiFRNthC07THrV1DF1wwwXE313I8h2rG84FEgjJ2xcF0aPK9I878chEzRiPxFrSkLXgTTidRKiAZzY5yDrpNMr9H-3bu-BnpL7_BY1HdO3f1ltWaJ4k90rYd)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/dv-aUDWk0eH1L0oVm_gFGo-XoEIdD_BtLxYsoSfFCNwmNDF5TOaTbcXt0lnt95TDeJtbgLReLVr-0vWpWhjVp6mn1QHEtmCO9h35EFaZ1eODDsDmE-zWVluAQodm1vqvE_KNZEvQrS21SwXTrqs53gq6-iBoMpXUtKn7PsV4cGWibjtwyDa4c8ljPe-s)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
