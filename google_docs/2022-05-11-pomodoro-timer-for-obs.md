---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/E8s-_sDyEfqhZREETet9OIMS0KA7pjJDB1YmRWX3xhhFlnGdEzk6YSZgGoQqvetQoxi3o0W-rqFJ81mzytP7s1ytRnba46QMF28F8ptfUrzklHplTM1kjwZ80zFY16DAXZfl2goiSXXshzTPlv1JqAQ_xMjSXu8bJiKUCwexeYD1IfsBrep6U0uhBmOT)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/wmJururhbC-1rJ5umfr6W1jfg--7XoJ2nQC6EiIjtKTHhLK73EbY4luYTqx1II6Tv-mjHh8_KsUf9DuhpIzgvW-fHt5lqjIWblHKDFKFPQxgDThxXnYslmhusyc-KfYWc-povtAUKaoKynpe05_7MQ23au8TdIxgtVBCFYbaJauT34ajCeAZcCwA7uyX)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/43KSlKscHHQxBzqkW6bhPDE_dV5D7lqkwUsNhBSp33FEbBxssfWlpixr50opDqCdFRRBa4NHM7XmG7vurE3D0WYGYxCJuA1xtagSU4RgZmFt71zab_beQAhhhrisO4Ij-mDoDOeGLd7uVYG9ANXLTqNJuV6eo3iPXgejBz2hfNo9n2qD8U3ZYYvbYtDE)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/4xj6gd15uDTGSuhbiYOS0hDJTXrT3zAyzSBBIuMMKWwUqGZkDpd8MCygWfc8Cpyot21kZMJLmN1aLfEt77zH1iABOs3IvPZzwE84CLuGCRN8qlV9I9xKD9z3-71s_FyQhL-oMV4iAl_OYNT59IcoImiclpWyg-uehOu26Q9bwhj6SJ6xcqhi1zsgTpT7)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
