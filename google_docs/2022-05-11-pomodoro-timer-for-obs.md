---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/XP8Cy5Wh25_eLA9RsVs5tfWeMz1Eb4n9MfQ8ZI4GGi92Xytci2zb_gQch_JDl_FfEKEPIzhuV5FNULehWPVLnWnZQBfCRWm6BuY4TjRsTFsxqJfQhrWLfW8ZQBnfJjRY8EhsBQW4WWv45YmZMQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/3twnaJqiaTUoJWpXY9NG8U_7irOuF50-fWQ8G3YMnS_0y1DeLqKbB4BtilrLtf4KTJelCKUKzv4V-QnTcFRuRW8aIVz18CSLKVBUjbmgNwLtecMi43kJ81xIOYG0Cn8DJGamXaW-8jo9p2ygbA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/kWP1QQ9zXW_mL2Xh6EhilDRhRoJuCjGweh8VyQFSiSR_eI5L1u1q6SLfKqJm8R3LuEPwm37VU1OAPSQPXnvNeB6qEegxA29H5QgwAZkDubDOO8TA5KCHy3I75o-i1cbyqi_aF0zzHIsEtULqlQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/L9SZVcBpbpPpsNAKDe2fnvlnEloFEWH54OA9A_A4GI9x_IOlK2vVlgoZJH1-ynhdL0Gnp8PAQ1hGkej29hMLsFTzJQnd7tyeoGK8ROlkY5c_vLvK4dF09wckuxRlKC2bx3nrBCFh-TZGL0YOvA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
