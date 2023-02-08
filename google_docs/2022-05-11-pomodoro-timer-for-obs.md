---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/zcsqdVUxlllXs_fKpeYU0gwIkS-Fb-vsyuzpm-l3b0Y-DMb2KL0pyF_bdLUQvBan24C3CpwAjizFHUNyj54kiBdPVCcDC3B6M8GsMFm6QOW0WCbcHoYvFCJbZl2zoS7ljaVkXug-PrhKscfkZMil9w)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/KEb-HNnCKLZHYfW5ea6DD27352rdP_-eAE0ST7pnfpb1OsGSdTMkfvakVQ9p3sdwvnELGwZuK-ly6wnsvFlYuw208Z2xIngU_zXzWLb_BnODL9QXKJmJ-CnSnoFTdRzcojXHuKJ0J0nB_TQmhRSGBw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/klQ36I3zBlE-LuymPhMlB0pWHlRLNsKHDRO2ka0oqoy1KfbsZiG6ND3qWF1SrK-y0dr26OGmhjQpgTK4HEnuFAk4nq-Ez6IvnN7pvaC-_opVFTLZ2Xo0wnAOQFUJf4JC60EhijzEK-YIzfkz6Hbs2w)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/q_J4uaIFQgi7jHfSaCloaCw-ZCQ81Ca_lYFK2VvsoloHovWlt3HsB3oZq362WWq7j9pKx4cAUc_LeJ9Ri0rQbZTZVrnY4Ks5ag5ywW2uxnfJqnYWenAs1P-DSnzRtQnOF1u5m6j_AlTIDomlRsvmwQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
