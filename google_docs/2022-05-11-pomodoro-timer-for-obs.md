---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/O6WIGK4Y_sDIgTJzw_6RszX-H4JyXc6z-icrAyvRkZKsPeLWScQ2WU8GwNVgn8d9--wd2Vo1Evjyrl9f8UZzW5Ct5HV7koJ6dsgcxc1aciN1ZI0YiAj39APlY-qOhF-_oJS8DpZ2FfzvUaZl6A)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/iqni1Wf69-JSF0MHyrw_EimtCA1lhJyG_2i2o9SDIwu2ZE4UaSXwbpi07-rlb97qZwcbCStRJ4hfFalSRCi645wAQZ4voHKZRmyOE_yTEYUSFmCsN75OCg0TW8JttvPyHhAV_I_bTjGx72wGTw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/f58aN6V3CW9_bTSTcZFSCBbygcqmnXrRUtyguFVOHBzywU0aBcB4K5e6JZrFGfDaoVR3SOl_Q3qfRYXlSZOP9s64c62yfgtoIL0XLHtffbTseg03wf0eXwAM6fNKDFqvWrCOQRjh7_MauqdqAg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/45Ey_vDDdxn5OmfBSuSBfiUGNrT-n4g9OAlLPpJ0m4Qgk42F-Xm9cg3O2w5FU_WbScPffddpgCI10uou4xb-28CfslQKHXuZlkt6nqNh84MCFM6Vpap4x7ezVP8LC7-4UvCy6U-9qSfD9yMLiA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
