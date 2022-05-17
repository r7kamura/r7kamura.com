---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/UmmffVFTIMmD-p1kdOhiThPK2WsFVQmbSTrZS80JD9L_yiKvBD6oyk9epAkJrq-eBKcn45ecP5oO0726lStwucV0kr1S6-lLxnyNa_KnaoLivnLK0oXsP3r-aORQR-mBXYCt-J60ps3kbFQKqw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/-3wM99UoOc_BbUOOd0fyWk_AZm8ZdiZgrYPiJiSCT5QClrScgha7kpqGo6uYl2KftAwHnZH3efSGkp3gzXnn0xiwzvIsajVILoU6xvvS_RMmM2-YSCGSRdDgoYH0NUBcDPKy1V5Zx7tarIQ5yw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/_nR1nbAFp12bYoaYfr5N-kCFB6HanDFVY-3t_Djpwesjs6fRqihXwq1SF5ciQqxEtj-OmHXsz7OU4sIDLRzQf4Ls4Z6_6MhAyNiIfVqRkmnxkYX_Alpc-3mW1Ku0WB6POXo-Q7tnTmzcX--aIQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/ye6AWeZE2xR1uqSTbY4sSFxL9q0Hkf8DviO6h7o1ERDCvYfmzrLONXTvGMyYIwhNh--Ot39s1iv2UiUOLaGH2URO9Vkffc-3borkmytL20-0K7Rt9ZlhduNTbl9lNnlNrQX6RtbVTR6jD_gOCw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
