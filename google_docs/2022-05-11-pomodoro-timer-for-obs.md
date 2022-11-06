---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/QrlURCPevEKX1IJ5KdFDGIdCnXhzhHCwlF0AXnHQU-COwbUuXE1XcUg4lR4ZvzpBX1Lct2PkR5wEMlm60U-axrEdvia1orYn7cvsKYgkM6f0TDzr_v5pygB64wm2qT2GTTX3AkfMpaca0c589Hme_g4BTIAowMPXlQIW4rnmTwSZ9ysuEvqJqC7Ak-yQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/886r6ySlefyEoho7r4IDhrrjOvewf6WkpEdYS7WSETwhR0N7XfIpntd0YQRlGnqFIjECGJLq1M3z9CROoIJt2sTJXydjLxOhzMHRemjrDX6B2xFhnzTG2ALSOiQejO3kMwF5U9P2wBwAO5KPIRjWcgPk6JDKRe_tZNCTJNdihJSpRprk_aLjgngyqVx6)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/HcBGhibotg6kJ16uV2t6YmQU5uF1qC1wWUsd6o85cN_8sP_x7XMuOO0TS4Qob1RY_kuqxHBFvC2VI6g39k_t86D1f6yzjjWRhZpSXBWWbQk068BcLvaIMX3a614mfIl3mIjI4o7SKb6iKm5sJL6KMcmCdCsMgO-Ahn_HDRjhCAqIkQbHxZXqd_F5vNjR)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/J9pmVTrY3QoPyztxOOR7MtOoMhQc8ItudIMN-r5dPkTdoSVy-5hz79zUktPdGMXqavuG4dAmq_bZqAQ5FopIGIc5uIBaMlE-PInW2Na2dQLOKLuiO7XbR017gnkF8ovGs4VOWwie-hw-k68Ts2iG-V3_v-3SzKkw9k05cJCsGWlGpgLE8XNVdmWT9_7S)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
