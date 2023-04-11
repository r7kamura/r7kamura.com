---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/b8K_LotEpSmO8s0EKvBVr2-6irl05K5OZlJiLyXiol0j5_eQk3JE3yuDn_6CNgX6IMp58sgrRJu6C-vF8dNzlfKOL6aemSC0HlWh0MEujrm6MXejZeC_sH7Iz4rri6Y3JfX54mI9fuwA4d4xOZuiPg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/08Ry8Rebv2x7lDzJD-3uExmWv-tRW4qlFOnwvZip5ZvzOKmCV2MBMazk5rLxNOjVdGt1DBKToxAmWTlhyFoVJCnhzL9ztZli0YdVSrEjKdlilyiNg1llH--HDKMN1YzyClZgT9orB6WPeBcKcsO1CQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/eQvAOunsiT6gfEFHj-jfWlO5KPidVv-lNlCmmV-dzjRfqQi5b7ntLmcI53BzzkJbtTclR18XWp9eClNZPo7qxX3oChY7rDzjzmwIjJejbTgl_ESzgHi_vcpoqwOm4bhBrvHGbtRY-nJ7zgbaJSJeiQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/-5DUeU5AJv1PHCjsvyFOPLFqRaZM8oYB0JnSiSjOJ1uI1OQgc2usr74W39ZDfVLcfceTRV0y5KTkcVfYpS-VZtIk1MGJdu-ug3nJaqmj-osy1zMqdIoN9SXKUzKZc0bnBs7FFfgc-Lh49bzNfnGSmw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
