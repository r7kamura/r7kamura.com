---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/G9qqRtOIb14YrJnQSyHJDN8Qj9zrYIVbKawna9WdLLKjkUaXWmJXRM8R-s4Q6KOVmtmRCjgOe7sq04wP7J0Gb9ZM_nllGXmO-siLTVrZG6-m8a_G81L18nzEeh818kHhhx1bQRvXy6rkqkH-Ge-bFQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/vW24btSnNpHyLDpTbJjdzFUn5PMtrB7OPpP9rlgHboK_2uKyEdqXAJ0N_C6R96zwwWTyHmva1DVMH_0Gn7Y3QCY6nBXSofboRVjWZFu1pHSNJWUWpsWCvSy6iJwr2isdVphKuGrHqV8e2BwnEbPTeg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/z_Oh1kU0ligfkwvVO-b2gpPezGfspE9symJw93EKtNgRMVAnQsdbtjDFLToVQpLMr8EDALflIiwNGsEcCHO-RSVMsn1R0-hPIIpApekfhthEY_rSnI5aHaAqIUlM5azhy-dNW8zz4A0nywO1Q9G_jA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/ENAHsYGkXKoMGpLiBRFXm3j3kxqSLHoWCpkvlXEumNG6tUM1tc5z6znLxMgeNaqebpc-pfHhF-b8vZx7n21w6Uw28a0CyXho70fX-p00ODg5GDgkzRUQz4sLyvyvwaefMZWrKiSjZhW_kxScjCJg0A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
