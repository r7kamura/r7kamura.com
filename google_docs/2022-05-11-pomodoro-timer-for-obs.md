---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/6Eo3vdy86QDE_xCzkFFTzbBT-tCOE4_q_n99rc3fJvXaTeYHIGXQ1wiQoGiaGvhIjUoDvHzJZAXYmL0_5t2-Y-iJucW4L-KaIZtZwSA8u2Z6FWg31VFdGyKs_Muc_pB9Hje1Lf0YGnAIH0A678RX9ECECRw73G17ruMc8Hr2F0sNFopmnSFGWx_H)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/8iHtS6kwKJa_nXGIkTmTDJQxYzKJVJAYE46iOgJJMCNMVX2QeyXpBkpWTdBdsP8OekvE2fgPlUe2JbsuOEq2vE3DooUeu7eZUqkPQ41u-EGqUVZ3YbDdhXfYSOo708NKzZ56rc8mIlLIjx81F0auwAqyixGe7VQdqWEaK9ehpjDSYFfrCuYporRg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/WxWhrA6oSSSLctZ9H0L74wOF1wPU1wACnoXC5HpjScF9dcutrHwuSMgQTl8_ormYibogdNFcVXNjNq3VzKAbi8k0WEpheqtpBlPoL20C0MPrC1HOs6eBO8qWpNNrGt7O-8SNUaPUnXXrOyXMFZ3pfWWVSKLqfgiPJFAQQwB7FzcSrT_gimWDjWPy)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/ydDylmZUfdms_uIS46RAzIYVRxzYW6k_K7tdDN8WSz6S3X5OlT_1yFEbP3lnEoo_jpJtTrt-w-r0gsVaTI9ANiC8tZycPOu2myP3ibwWTplTLKxlcU9RLbf1Q9-8a--DjiJerLpF080AtJ3pAkgEJAXY1blVYFvm_Wzx35uhtYLcq5bDIUWiHH0o)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
