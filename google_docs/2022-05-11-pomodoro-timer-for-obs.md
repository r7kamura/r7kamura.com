---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/ViY24wxG4zlKSPa_NTx7ijxTN6fksvzALJWLgyBZma1wYZ3zr0KEIfF6mG_fmjcEeUUydSeWy6_HISV9_KrOpQ0wqgbcQgjtowF-XU-u5FPsf0l2-bhUzGbXhKuSyR7YqfcNohRgtjYbCh1-p80crpe8op8D3FyyyWfFL3CL4ZuPkzRpOnKmgl_l17xz)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/zjWkASrRhOuHC97Gp10JGeXr9Iu2rhKPXonTYA2jsfFwtr59-lmmae82kAi_16p0X3X5m1qyMlyPWRMSnXruzH-bqePBrd4thTFGT8YAXwfs0RrcmUQTU0IpZS_D_OF7TmqnlrNisWjiCp8Gu1a2XGTSMKUJUJSK6ohupGU_AmpFXgEWJmvQvH7GW4C-)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/JcipumWS334ZVRutUzmcy44egXkaFN2k_9sXaxTS-U3NhnTJXt0AassiEEOP8QZSblKYZXrJRAJVQT2-_oBhKwmbI11q6NGIcmQOIIbwTGMbLLX4HwmLuP85N5ckwHlUonG6IU5UgnpJiOqgYIy4JcAfd3dVtaVx2KfYMnhztv6TFwFJKrJxCsZfnGCt)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/OSyC0f6V9N4RbYogVL_9LxgJj9_EDM84WdHV7uB8B5Po2K9fQojWAm4r1PPdm59rjJbIoYvKf7uMxuRQUZx9cRej2OwEuAQtjwtDS1OxhCGcykubUb2drU6kjNA4eCRo9gn-aNl75uXiSA8b7flxiNibag07ZanhX-S4MlLK2AFtXjPmT4OoMA2-nBRh)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
