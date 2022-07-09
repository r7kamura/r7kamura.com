---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/jVWg_osIsNDw_vYiMZSm1wUHIG_RBDGhh-DtB551oD5hpRA1T49fBZ1K1OdubeQFjin5VXsRlzZxjpqQ_kc359IdXCXWW5H4zS1YYVaezZKgzqdDxgQTnc5edDVcaF6WAZtllY1KUppRVelljA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/xb07mUZpQ2JupDUTSxsFhygdD62gF-9_BxO04ibdCs5F19HnvblXQDtEDw3fYpuYIKjzFvZXq0CS99K2AK74tizJ1RrDdEuXtdWZjK7vzO2V4fr3erMO9pwe4CeFZz_1Gt-lRdBZlKzB47J33A)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/rMGCmcV1CTn4vTD5UfYTV-OQ65lA6NVCMHFDmDroZBwk8kAAw93VKANmc4Qxu2QvT4ZSkd-Im54MY_bAmrkW6Ur_hTHDraIOY5kWvtUzgV0wMs5erggg_nEHo7TJUCOlly0GeBhV0FQQmghUFw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/_8hvNRr8mSfKoK6aXyKBMkv4Q4VhidpnTEJmvxFMubB8YgJwpDiuWTMqvnDM8z7O1wAZHE7oIwMKgcxPnh_gBfln5iQ7KKv0CMti9HZ8w02z2-UnTy9TtLgTKaj0Iaru5CTO1ecnMyGVNRyMuw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
