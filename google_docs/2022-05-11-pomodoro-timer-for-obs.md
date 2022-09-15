---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/qBnbawzmPnQOoRzmYBzEAIGuiWvipIc3H35dC14PO68cYoqTwDm0KRK-VpqPomvJTx6uoxYTCfbkcNOGF294WW-P7ryjWXNRL4SeVpRhQy94_sKtswW1xVsbve9y6wBkUud-Nnhwo2QCmqk8n9YcZ1g_ydt4PTygS43dHEE0WMo1hbBciVMovbaX)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/IZ795RSgFCecxa4mBr02IvUrkg8ZKMTUlLE7CBEMbZC6Yg7WCqw6St8KoyR6o8Fl950EBqRAUfBvU73wbvHG0kJqH790AiGbwYLhBgzpI3UAUWBfG-1-oIsRQVJ0VGdh_EzA8wtU3eDXAg1Bq2Sw5FEgetikvPU3SW_pic-QKXEjDLhT7Y9y3pWi)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/iE9chg-RaN3cMR8Ry2wwKOT_G-aq4m1LhFkdYoJv9RuzMCd0XXZyjdCcpE0t-j8wZt80TFXOdYZXp7hHQQGXzhNLBmhbYXD6eJ24ygAr7KUG5GaxYnHnt-JEMA6QJuB5XihnzcS84EAQqIUm7uX_hNk1-jtzcQHksYMLgLTxfpqMuB5xIfWHVbT6)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/52EZMOfmNuz9w5sNmREdEbHZl3-EzEm5CZo-Qro1NTz3xoBU05f38Upc4Him0SMcMgmWdWWZhLhQKQ90dk2sGUqCSYVKx3JetJ7j2WhLfj4oQd1F7TRPABCvFo2Oak3isBkV718X7U7h000ReVaOr2lznHlINVXpMVtUjJNS_1ncTXQ4K0OsWj4T)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
