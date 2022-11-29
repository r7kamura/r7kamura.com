---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/jCwvqt78Nkszymnv1x-mwDW8RnOYBK8ifFAXfNy1815Ttwv8uCR2UmMJjq_UPHSWHVv5XuIucTfzSo1g-hKJJCZCmmhN1lKsUIT0m5v__tqbNnz_mdeAoEx33Ak2srT-TvMIoq6Zp8bPMql4Ju_gveMxis6Jsl7J_9BXDFAUQL-KNEHroXDtmMx-JcdF)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/MyfrTfQmng5mcabjiyfvPZt8AgUU1x7_Yffxng-8ocwpRIU95rXGYYGRR9XFUBjrOYgC_gHMoF7ReJohQX75OxEhZ3x-6vFEXjYPsN24G8kYCPWq3XLGWjfJmfyV3Za8vwIF7ZVHV3NMvu5XaSa96ig6FUZcf_GaKNih-l0Iy8GqiYpp0UpFltwgHF5n)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/FeCpLRrkDYxpFBpuzslhiGP5KMHx1B8CUCDP54Djd5o0-nodQx8Ukw850HLjxMkR63obykEdqC9L2hy9-g9Rz_Rfjx9nZTe5MG239EtZe00vHl7mjBnVgCwojE4Q_WV8ipK0pKU9khz_dHLlkV-14yP0Gonu3N4Hw6ZWkEkTnLJdR5J7t_CyIXrj3nZ-)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/TVg8RAj92joMPis1oVK0sq54jeY-ddaIQcfUnBJQ5Zn_plSzRZl2-Y2GFJ09YdKabhl8zsnmTEOm2PkeardVE6KID_rvNFGDgCpeI3Sc3_p0j9ovPC75mrhK3J6HZo4orR8kDr5ZuhbwpE19T_DZ3hq-fSeW-NHj2PskFT9UZw5Frr-FOp0RbQiAs2I4)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
