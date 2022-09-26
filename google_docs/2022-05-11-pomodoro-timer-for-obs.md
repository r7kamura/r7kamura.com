---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/Zjv2LRjO3el8525uDxzxYC1L1TJc404UdaIuPAs30Ga66SBk2pNx7Jiklr5zPScqqj-IPi2JWVX12xsLPiAkhco43JcZh3rNHPTg8ULRm6HlUwOzqI-6bL0U0voI7l-ntrwZPPfpqpETGaYn0vDY4l-S4LCaoLdf03xNqjl75H7TQyljRTPMtoZN)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/XunMu5J8Qpup4PVRemJy_eOzfUPvmZTp18z0XDzYzpHS9gUtK0E1e07MhQ6dqhUWZ7i0T_vFT0Rwh8CWdabXRjDmti-2EQQMS6gOMMxrrCr3vz8jdBn4El27Q2K5qGrsaj9vnleQ37lLM20ygQn6h5dqujK15ldR4CW6_Hs6T-6R4vQR9JFjS_9v)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/clGi5HS64WDRcd-VKYlMTHMKq9eOuF4s8kTDoFiF8KNo1-Q6h2XhwMNryyKDXP9-swiPu3hSJDazFUSDYheo4D14NSq8LumODdLuurZyvAyTKBlou8JCv5V-ukHa4tG4gvy7FD43xivBbMEJYvLI4UQU9PGyaX0GS-56YY9lN2TAj_xRKWbuudvF)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/Ghzj-iaQb0GCGTb2hUJ7weOvsphQwTrueTImd4eQKSFBJFVGcvJi2PQyL0FTN96HWAmPJQq_8fwJUEyXY5W2s-Ovk8YkdotezqzhP7H2-2-F4Yg4wEK4HSEgDbVYNTSRkbww2v6wnI_YxZ70kCr53hWzFtCAodbgeIjSlcumQ5_qpPtdsFLoFX04)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
