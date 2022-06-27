---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/S6SoL89BHHQ4-INRZjEABl95elXlHnmrcOB0TH-pm-IjFXWja60Q4uyScQcgh7CrNln8oOgh28g8oKR1SqCtrPBnJA59CNbQIb6p4NJ4BUzy8GvGZP7zLs5ZMq7Znu02Ib7lPwhC-JVBBN4zVg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/xLb7SFOMHGW7uwA-arRHn4Yg9Lka-sJ1BgPQ5rttlgQgy_9fBEKoLq45QSmzTTY-vQtVFK9VCQUM-auMe4WBTh1VMnVW0Rx5MNN3y4j6xvI-74K_KnRsCda-Ayh5eem7FCGyAV_bssSacwRsRg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/klWVLXind_NFskC8wWeZqWf3G5Gy-cbDrg3bON1VxQCzeNghhC6aF7LG-bTnFlDyt8Yy71l81Gfq7PDpnGxUlveDnMA-dmrDNHgBdDeWOLxszCYltQNHMdXRsc1zmABALErFtTjx9Ycol5161A)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/K_UCC6qDTaJNx7VV3MA2UE7KPkUG5c1V-pIS6sCOBpc6IN3r-QK92FacF_-2wRVHsj74r19dO3G7OG7hTVXeL_q86bZnrldbPyGbD-WgFJgDJJ2K-NnqOHq5DmrXHI2iyG89xeAJfyRrb3-ZgQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
