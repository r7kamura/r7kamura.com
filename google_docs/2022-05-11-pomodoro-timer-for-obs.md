---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/XLZfzfMC1wLscrvighUUyn1u3CVCh0x5QRgAAUdfZulUuYpxqLnwVfpQ2VWxwUwCZwhwoPQA0mwjzpYyB0Om-2mLWRMsY56lgR3oVc9LKBj4dGkov_khFywFnOPt7Bjv1W7_BhpamqSUqpqh85pnbuuetPihw23r6LR9CcSuX6Al14V6qSUViakBek3x)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/gTjJ2xNVV8ijoya1IjUzmE4P8wvSv4QGAJejaQzmXEF9dTjSwNRpJBOjtgp4DMZtqNy5dyydd5U04xIh08qp09ut3YEYvalbU929FKTs9ey6pZclBkE-ikkU_STvcDH9FIJJ2TaC3oQrrRYftKF46nySEehf7mw-FIgr4MNdYtcwNiMwYX2MKNA6e1NR)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/f35d-C2g1ZfwdAjkEJ5dDDb9KZ6V39AIZq-lLpt7LLtuzNEcNj7Xl4uDV1_5l5g1Yhu5Gmx51gn-OXnw00L7O_nBdC9FPEgM-eNePI46c-iyTHemdpzV_yZE6CdbXOTp1NJqxlhKN3l_pxCOTbNJG9F2hULv75WC57rlQcNxAUfUX7u3eedC-nYmz1Nd)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/tG0Dr_6eo49Jjn8Im8yD7cCuzxPOU9vGM6Tv9KX_h70MD7feHxL1bKle4mTddKBF8QiwvYUGWkQdnx3gx3D64v50a3-w-YLEZGIct5lDPf00XdxQd7XuKFGwXAaTWUu5cuQFMi9Uy5c3XMDmakxE_pXP1zACNWskpvDKKum7FbhjhKjDxOZnx9huDoVX)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
