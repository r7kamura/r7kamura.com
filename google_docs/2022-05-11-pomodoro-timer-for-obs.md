---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/dGVPPSwHMRvz-F3HUs0cORRq66HhI37KGh8JIt-7pyvbaoyR6Fjt6JFXLe3Ur6OB5XbPtWLORW1tlXHt0e_fNMu5A37f5mGpPDvFnzRnatcTThCtRvHXBfDplVqN5brJU8CxAxeEk1KtUhyLvSnYVA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/McSOgPMrVwNlhb2BNfNiMGnEITvQtV1ww4yvBUcZEPpOONO1AqAJ9S9Hd_unRb7hNKs4OMgjMCCS11LAnYHld9SWuhn0bT1rUi8L4PO9yMmbfjZC_rsoDubb3Ocj4rReCAMfWgQy8o4HBkkwtRBYwg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/phIoIuwraX8VDJr82dYk_AuiLJSYpFNN9DhsOe-GbZiohl6n92brEb_cbFASlEuCf441yOthExJEcny5-1nnp2BNzpe5sMVQ38X6t0eemk4_fBOldJHPE1tkftpM_z09R6YoMZgN2FDufk9nhvnNmg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/D_V3yX8-VcSbn1AikcehVYU_TuBAkEGc8EY4AqDnyyGb1qzNSJkRI9vHzMmCFl6Ma231aZkYhd9qTncFq365Dm4_DPnyFmJcMembyRx-0feFwsRX86bGJvy3-XCDf5eRiQep205uMDe65xlKhaV_iw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
