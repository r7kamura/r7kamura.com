---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/PdiTJsvUs7xy-BThzGvY3peHaOp_eS_s35BK2it2VssNCrPOsYw-XblT_yPVdMZet_L6Ujw_FAnu5_fHEM1nF4hgWNm0wgLwE8ZFMaOkY5XJaBDXEG34_pZnc8l8FPhlt-CIQmMywLLBNqbjQiy0X5esWIqfd_0wDZEFxB6EkcHK-_FO67hP7KRd)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/EnIoiJfcx23g27aTPHGtVmEHqEvvMIbXrS5Vo_pBclrS69WlVGgr0scdpqDKkkPvnav0KzLKXaErKjrpY_CaH4TJ_O-ggLCo0Hg8EYt4Wf03BA0oZINiAtjmsnvDNsq1fgn0x22_AhFhfCCjIKGUz2PQe6EzwuR07fhVg2AtmhUvkIPZsl1IBo58)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/A5x9yiAkv72zP9z8J-tceOqztEfYn0KbBYf8m61N1-VvLnTiKak5hHCrnJfXnJN2Q_KZNh-1Ejjpe6yVQFGsiM0joJAZx2NUQoVqKXi8pxJAxPWMxNQaEoisPT9rKSQjfrmtAHurU0IK4FbaM28sjWG9ySuviJyy8pFICavjDQxpW4IV-m7QLBsM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/oufX-ofWUt4bVJPIkX4xNWZoUKG63TKUczxS9GQewpStPB1RUP0xuQ42kYTpU8_799HLsyFEmlR3vgtENQZqA02j7UTv_kDYn8EbWhiDrMCJAaB9MpseyOeEV2U6BNW99DtTl4bRhri6vgN5X4UnS5zaO2E6hRsGOXkjsEW31-sCt8N-gyZsx75n)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
