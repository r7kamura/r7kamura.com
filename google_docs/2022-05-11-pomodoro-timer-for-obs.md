---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/rIqFrZSXs8WlPTh2u2fY_YiZ3OrbnT2Am58tKMZJk4i1ZGxBIfs3cw-G6i_UwD6FPOXt94R9LRyWn-g9QQsKs5VoV2b3-A1tXX9qbUeopoNSZLjGDgMDlxHUEr71jahQrMm1fc_eIvJZzk4aK7eGI9bcDURlFdzYI3uuy1dAr0FPrnk1h3Yk2xpBz9Ky)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/fUr_Vz5RtHA3gj23QWXNlpgEfRir2NBPVm5vMIEs943qhoFghL_mySuhsrcmLxELqcWKaXfzuaCVk85D_d1C6HNcJh9BXDXi7T5Loyhhwc6yRJ9_S-4p_-abP_fhHW04HxlhVa8LUG2j4Jj8JauR_MHR9YmyWW4nbP-xYra6QylsGHoV8n0W1-n8XbE4)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/KzDqvn9d1n1VhcueSCi8lgKUR8Wxxq5c7fKdN9si4TU0em2_lj8aAY2oleDQKHjCxs65rWDhD5LTdfQ8ZD3R83ps7ygIsZz3oTxqVEInR_RqthvTpqGWw6e_BN3hkUY304oaeOGr8qE_uwgpVgm08yVMnbeNUUIkWpGID_O1k71zDW9dKvl90W4l9TqF)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/GrCzEZF0BZW12DQtN7y34okfz1fcQ7NPv0BCXPOSs6XLWy60F29Rj3_LrUsgQyESPYG4d18lgDBZQ9LJTQ_ai4sW-4OJAe-_8TdDMGKmtS8_R40fuspQGrwP9IzbDlOte-HALxj8TrN90lFb0wBrL2UJj4JCXGOLiDokeMyCj80O6UZbBNtOdTcuxdF_)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
