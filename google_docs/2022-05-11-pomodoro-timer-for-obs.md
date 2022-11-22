---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/Appy1ICzdJqNmb5z6NR2mm72DHLdliT3_MFaSonRY5U9c-NqWMzy344lIhL_p1hJiNmOoTDnh1sJ7lvUEuw05fCZB0w_Bep43YnyyQKt49aolOYlswkHnvgF-wk3MMbaRLIhiuTay9cFFV38BNPvq3CRH7VCLQVwAUb9SsUmmRYF_2RYijrRnS7r6j-c)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/Nu8VN1LlcSCayySv6CzJGC4mdB6-jG5YFrhXajssqcf4cfBR6pLYRkG05TFzRmk0y2MMznRPg_zzXGV_oL2xwUq2dVgY_cCvVPHKngxNL3mNOq5IESxTCMoUBnyqSrUZvyduPnKV--EbP8WGNu7BRVvT4-H9HfZEf1NnRkBrqdNNa-qZAYxJa0cvr75B)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/-E8htPWKamcyXNQBlnv4cq3kRGJo0Y9dDkLhd_6QTxSghrHzJhqklBklKefbqk0omgKD0ljxMoO7-jAgpXQa-93_tdei28rmi8flc8I5tQlhTa0Hc7ELpBmlQhN4HDu0k2xVLPxPPR46YqGJpxMepBz99N0qJtWwz4bhnM9wLoLgV8wplk_dJPwcOczd)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/AwWDSi8C-lJbScJ4E2Rj6gFCu9Wb65BKIp93rcVgcRJKeBBGKCTAlJgWp00qpgqkIlE6ddtAnmasxHNlUbNve5SfEkZqhmAdulS0J9pTWsbvxKWFbDW8jE3E9jR8mcG5QO9oecAM0Zp-Eve4KJxKGygYrAJn_vYIWwzAF5L0pt1y2UnsqrrGpXP5ulep)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
