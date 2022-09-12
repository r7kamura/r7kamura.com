---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/8RC3Od8FBdHi4IwdX1Z5eUem1ksh1XGvkiJguTCNcch-MhH7JJ9Ey7Gz5z2ZjGTHKJ-iLQ0FssR32EaF_DWnGNGK43dt_U6H92gK4hHsWwNiPFljPAfXRoat4O5XhREOr_k65Vrn0yN3SOX4s7CNviMlc-8Ea1PcY1XivOOXj0bbs3MpG2yp51Z9)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/1j-OMPcIIke0_VJwFDd9dctUvo8pfTTbuDLmzJccfD7FbuEQ_Z-nHoneey5M_nEKxJ5LQb4H40_W2cjGY9ht1oIPgO3ZxyZTHqE0IPixkuyfH2xqKz3Mtbo_hF-ua12rSOohN1fiCPdqtTVeFOK4GNMtef_i7evhkKtPSMxxkXb0VPcFQezqU6DS)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/1S-dLrO6xB4ko7BofiLtXGL7aavN7XwWtUSxj8UX5ICOXutV8q6rWxZXcYpf9NwIwxIybiJNGjB00EjWrhK41_R6prvApVsVek5tIFYX31mh5nDPrWTNS76Mk0eJi5ZXfWpwfh8FcIdwS_VWgL8ih6M9DFGuO7gIH2kaSKX_zVHbQon7vrC_XbV-)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/WqaJCW6g1k1KadXFZJi57G71S36JohAlUsAzz0GvnLWnst1GFYxOAqU0C6U_MO7iy85tGyR5_mWrfkVXRvR5Ubr8q35-W91qGMbrQPcPHP_8JCYTqUTKPky64Zi7jKgKlZtCvTsh4WlfAmVEe2uIXQxliHYkHeT7i9V-lIOJRnw8JepRmLxJPQ7_)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
