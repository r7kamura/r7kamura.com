---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/LGmeuXsU12VUCSsQkROvn_Pf6bzUvghlMCg__sENkU55PZqSRfBYDolYPkhgDR-xd01Cnn1ylW6tsjF9KSNqoGqnXvVF7TTrwu4aiCwgv-JLhscZ0lVZUA60hPInq-ARBgOQoFjtUP36KlnZLg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/g53ffFvW_mV1mpzjLx8vRZvyXgUWe9ysAwpmNS8XgkX20hOqvsiLMeNI5E81sFD0IKDW8BnGAGbDcIUosgslCJK3yZjuhEzGkDkubZxPzFSwQW62LiIxvMtDt3Xmy1kEKbHG_-fbKI_dg3yNbQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/A0ocxAcHgLFNtUbs-GTZVgI261I_rJLJNqJsrbvd9lOfLg7J_iGQ6Adt1Eb718O0S7Gi_c_THyioTPyfGBYJFjrdlVbvzVlcRftQUZYuXwTvh3lZgcXYozYc1lesu56DSUzGncaa0LvMZ4nnTQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/a0n86k4NAtB1LQllxq2rmLz_kriY3sHTM8rV2k7oh4ir1ovqRp-gYuxS-vj4E3KkhwtK7sv9VSqVsutvQ9vRhCvBpJqV3RB_NFkNcipAuSm5bsahNj18Vm7ZBZY86vzLb9IWnXPFwywrRF__ug)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
