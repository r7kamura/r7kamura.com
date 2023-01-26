---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/st2EBREN8hd-d2dVYBEkAVwb5kulw2TamnD8F2jECyWGL3CwuhH6qaLXuNfhvmnxPPKE28LFfPCqSOrAiybPI_hVTZ9OFk9KWzwUJDzFh2_Xi50OMgK7fSxf19ik2RfFyh49zMbNtzJwSJX3hGATVP6U-vW3sVf0VjtFFXJe3P9FOpzGt4vY9_FGvyL8)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/SSTGj4llYeqVGJO5AgHPg8SQb724LRjXDKHUuJiFBcUmmwD05AD9BuHP0taxDgnR-SHN4GCWFIlLZ6wNjgKL17OCl_IHuAtWytcDAWdYu-T0gASEvvqp1ejYs-oMUB4BPGzhHZfei9Dd8TsM9b1gqluMw_No1qC5G9SH9ACrHhjrADOx7PnhKTK0WgMR)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/NVnc2xQ03_28V9wXqj0fq33w-UukxBpMpZTCgGQjduPqjp8pbTG-Y2TVPBO00sA7HuvNpiDsclv6WZYeMHkiPTB2FTg6FnQtDNW1W9OheczWm5m0uBc_SWkzjz4V_4THsMc6HWmd3Jxhyh64vMVnN5pIzyQ6EW22dYTJNCBHhegacql_ikhlPt3AEnlM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/hEO7jDRR8r_Jtpv3io2G1c2qnBuLAhUJvfnjL5EJm1B3x-2SZb3FH4SHPOZvecG_7_mXJMBkTe-Uhl4B93Ad5zscnmnWTZAYfsjjVi5Z22t8aIKPmiEOFoFYOeIVlADd0sWHAGUFwgkZD0YypDcX1D7GqtXSLMq96cE8q_uaw4wJr5bAuRh1b_PRtcB6)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
