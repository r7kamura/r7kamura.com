---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/wgWll3-Ayopgc2WjTVr1R7kKkpCNJK6orOLfue0m60Kj08kvZUWmwC-fKI1lZ8ttxUvGebJH8n3Jc05knEUp1HeU9O-ZHH53PTbZdrhhXwxYKWUzb39X1_i-_xkW7p8d06pUN7DNr1UjYk7-Pg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/S7aNu2vN4ce_XNAqwNlDAdcmdPEnGBsZ-ooVxC5cXrxH7ADM1xl2q1t62tteMLX_wPltwUgm036UR2DW64g29fh6Tp2rdQXKEto-VV9IzdJ8cmRWD9k0NaVLgJXhrPxHx6P1Ohvzh9j5NnZThg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/9jzIHPIIWYdesnActaebHk9KXDAMqHVdtR_XhP1Wg6pDO7rKm75sETd9r1AMDy__xwPBie9kO7r4u5l3shMUFJG_wfWu-8kX1aPdukKPMEiYnGK62fxJUSAUX6jR4n0vOFPYiFFnJ-3DAgeq_A)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/wdRkY2sVewNF5N06O3o3GOWy1bUHg9Rx9VLuTIjww1BPHoa1e-ODM9rtfwfLQ4sTwNM_1omTsn53KIXTK9I-M2PTI9sZ85JPpR9Sa4iCrb1Vu_c5_L58b-MLpkXPhtVf4WZlzpNMa7-XRS2Jmg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
