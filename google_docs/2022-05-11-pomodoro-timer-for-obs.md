---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/YYu8jjkY_hd4npWu67gbOVxmhrICEZYn__SZM1JU-w9pXMN3CdZ3BXVuCVWLlch15NsseOr4wDctiX3zmLdAx1qjaTEkM-YHKpRBfBjKDTiJqxZTzlgO7n8AP3eYXn0wfF-xZDM5PPuBdURK3fNau95kBSJMdphl0-ncr-KgEaYjM9WFwH_daeTs4Yl7)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/fWDzJPtAuUKErCZh8vA9XHL_pmNcDQIsbWj83SIcp6Du7qKSISBsPkfk43WHV9SJkKwOXw_EsBA5Yc62t70msshtaj-Z0B_dt3oyp6eGWM_HsF1-sPwEabpCdxqAiXohDcIi8YhblneJH3dF70zTjnj56coNL_XXwqzHnMwNh4zYK6azvPMBlUP7P36D)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Q9BgnSqWGbaP8E_PK1-8F614XqSFGPx-NN3DsivHzPRoZFjFYhYXj-Xedf-okKLAtaU5nCBoBdb-8qX5MBD88uSsq_EPehOcGPG03m9BUZljsmAut4ssfMefQndC01PDnnLGMhk8P8ek2imxE4be4nVGmNQPHOVa4kwk9ryndiHiJbBIaVcFNtHSbw3d)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/fPrL1q7_NTDVPBTiKZ11GlUqUoFfQpJXbksRlWilazCH9SQQrSFhaAotiOIUGB8yUe1wH2OhVFAhP7n1L1vEb-chCK99UlnOLd9Gt5623PFxC7b2scCpf9NdAMn309rlnIMuc2Tm5sGEAhwNvgonOKNlUZ7VqPjFyGaMGeUvxddtxaDKHUtFBtNzZca5)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
