---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/qCDMRKpyqV-92fcCiwucvMHbr32PJ1aEepA63fRkDuBWU8JzigBfHUS03uuaNJ5y8O9J96df_X_9-_ZPaEGnStkKEpRbM5kmlwMsrzfUau7ZH8x_MrNVj2qLF-1btsuGH1phVODYomN_-39-QdwbXg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/aw0bkj8lQMaUJIM10aMXX5JBCtF62wG79wENshRuVTw256IwqBrzHPVMztpeJrBZ8lBONerNUHtFsyc3_MZLi4wogi6hxYZm0I1XRIB7PrNlV3EvKqbdqY1DPeKHd4jwst-a_xipD_BvHZK_pnNEwg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/cLKYQAqrSsneUM_s_gxzjUpqP-aPGp2QSfHkel42yG4vJKb23KZNLn9h8RlTJSFxkB4QqEGzCdgSSYsw5r0-2l7DBvt7tOrz0omFP_A_dlm1wma3pgY8127VpWZ765w7EB4jR4ZBZSPtPaCJNVE4Kg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/YPGehjhHBMMaqztqrq_BsPeQTHwQU2JmWYY1mF9CoUp28JzTdKUh2A5wthN-OEM0467LjE5RCvbqTdaJrlUY2FMheqtnf8Odp5ZSlJdRNMHAWf841KpTQi8ZaTDSJlhv3jLfPD3hf2jiFRKlzdjoGA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
