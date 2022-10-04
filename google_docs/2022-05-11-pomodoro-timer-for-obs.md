---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/p0BYF9pUdUzYTL8COdpeQedGidybRcEw5qmP2xqNokcP_oNZRjF69PDJ--PBG-nkR973Eq8GXCeEhFD2p45IR76SchOxqwY08z6EsO1WStgmwyuxr-DzYTcWNKC_7TyQmSxV1g8vra89eGDEV_5swFKXK0xVbPkcH8gbHb-U73kOp9RopzdfFAgJ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/Hv7OuEBkxPv4xeleAkPW9I_t9pGvTAvrWSgLxqfhOmFAAJbUzy0roaoEO33yhVZUbgAyLTqr2YlJORi3aWp6U8njv8ue3t8AQ4FJnaE-4qgjEs8Mts6LCUO-tew4BvziRqtE9yrQ0b12MDIpQ6QaamSbjU7OweXdDWd0NbZmnXWNILzSeEe0bSkg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/ljwTZM9mee9IV0MpmbfEywD_waUvlRuueMF2juvhvhQ_Gj5pFIInLCQYhei7tqON5gLNk1qmgNUSs8P4YZVmE_VRh92FmIRHXS_J6mGzhZcQwyv-NHBkQc6yHmMHwQYEp0bE-SJae0GxszSVQZQbqdEjg3cDpjSYMBryl_Q_HRJAqWXIdrEsu2jM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/dyi31IMfgMw2Yz_bMUDc4uY6AmDtlOHTfCm-956mXCx_wKnJK6dRrGwDugITSX46rufKeNBL2-ZGvZaWNNF5cn1K3_Ec-vC4SbLva6hSr9yHfDeHu4uIa2s03Y46CMpxYH-xfOlDgVrrkI2eYMefZ3N4lOLPf3cPDpC5cLcvHRjPVmTomiBiZ5gh)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
