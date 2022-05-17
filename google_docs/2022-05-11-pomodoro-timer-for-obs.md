---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/NfGeOGF01ufsOpo1Nm0Ktt4Bo6d-R7gykuVYqiASRRWhR3nzfi_PH7q_ffpqIyyQtC2OLP-2nLIZekgm5Tf2Yrx5Xrag2Y6ejM0M_WN-IRECEfq7zuTnWqWDSsVUnY3eVwTRplOG-J4wdtN4PQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/xec8NKPcSwb782qOAoC8iPLH70APu8UKK8sq1HMZZuPoasZwmAUYX889yshE9Ert9thpbkfmg6GQF-pb1X81NHhag-R2Eh8cMdzgfSVLDODLfUNZbTsnLm6q1O976O2IS6kMWJLLQoMuZUPJww)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/ECTTkPGZHdICl_ckTe2KL7su50A1mL_DwNMUkMO_8Bq7_p9BGMx960_FMRVUXt_mTbvZ0Op4kD63sGcRYNei3yD8DBzUpBATaeR931sDL5z3Tz5g-LHoGMGCfMv6apcWN5LIM1xvkXgDWFo9CQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/AXM_-x7DlwsmEOWB9QtX2MrylLn7S7W2i8UWJVQKTcJaTGYaqlrDb_Y2ll9b0nJ81aJtNXACOTFZ8Q29sKGBdp5-WB3HMDLzUejwHl8BxFFjRFkMcAfV1vqBaYuwm265G3anr-xPvfCdn5E2aw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
