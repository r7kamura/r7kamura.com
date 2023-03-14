---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/9s3HEHVCb2R7YILElwjdlSJtOhciOBm4rttWy7raZfJfFPXCBoeIY_8wU68SdjYI9ixyp2Bx8_U-hMXWvaDtMEPedwMO0e3fuc5SiepcR6QP2PzpEJ3rC4KpBmojJQHIyS6g70yilE1y6SPXPq4z2g)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/nhAgZuxe6dGxr1E2zLQdaF-0zWSSzk-fxOxY3r_C01RWKgE-HXulkDAONQNqKhg9l6Nof9EHEgURV5xXZUYp4vwTqrrUl-eoDP2tU-uFBQ1Q1n9ENPXe_4UyuxhIDtZbJnRfE979ljLiLNlj7rtMtw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/k93t5FcqEf0Gi4bp_igNdXl5J3kiVB-PAHmhTqf_hs6BcTvOReo2ghIOzYUZSqAD-DJUsXpo7_pLbb9HcyLj5S7SLY8A-o9YaRmPgDj1NvmYnEuam43AKQb2NyVA_uI8yHPwdfDmzKO022JUOAmJEA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/m7_GZ_CF_JdTN06Sm4u9b1FN55uORRGMgbWzm1zh88obpRiJGY2heSD5qlqkZqjFcPdsv-r1iSm-8KJyRpAvQZY6bHbc54Y3YU0Dje4MqE3ASrSiyk194SLD0syNKkdZnI3FU95VUPweZq1qiWVugg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
