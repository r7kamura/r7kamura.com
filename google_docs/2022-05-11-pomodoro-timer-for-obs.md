---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/_hrrNpduIR0sdkCbyIM5ZuMm_Ah00SkcSmpPAjSLcAZFlqI3qbtbXvBL7aykivIHsRMfLz8oO3DPryoc9DfGtgpaP7job9mH51AWF4SncYz6R3NAcObbFDf_vNSJ_Yo4ODhSsWOnFq1OKF8k0Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/N71mcDR1ZRKcwUgESdOYw7b5D5hxf0LyJP8hKpFIJFRk_tX2Ee3Dl2cbnSrYjoSCkC0IPafu2hpVpuXdUU0xJh-58yTzCCiQbLKmNLU7RWOdK4zKx1F9p_gC-ztP9VIQv4fj6pm4BNQl-eMVsA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/tzl-DBXrU4eWrkVq3lG5tPp2EJV94wnOxMkSzmj-f2GuYi_2Hg1ftP7KgyMzegEA0WUzsJduVYUszd4jLiOlbYOENK8cv2Sk5lBBRJj_SUx5zlacF7-EAAH6oJlHOkDhDKY7UD0k1o1khtNDfA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/v54kZU_e0c7LPrRekvEg-z8Fj3VzDWh4yOMDjdYZ3B78_sgzb-JgT4B_Adq8QpKemuiHQrVF9dJyj3BHVvMlawud7gwUEhDBl_ez9zRYd2_cSNs9Sfw0JaPC0JtvUML1YK_xu1RFh--shSLdWA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
