---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/vy-mtyB-u4dCT22nseQmpZiAQTWiF3ggMfDkBEufsAbdW8R76HG2dNQKzm1aAqrrFnfy70YLPyViQqf-AXkWjdOVgSDgaxV3jUw3aFSlp9Mhdr6fbJwCZ7gMoMTV8Fiag7jkbAuEeJ6zM_3FGfz5H_m4mxypJqhVqA4klJIkYYWTVFr_kdK0PwO8)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/s75gFbVDjiPMEQpIDU-B5miuAzEmiI4l435Tziu2ok3uPpUGewDS4OLJxWf0hlel1SD7WD1QLaSCLbrX8_gsdxKooNtflYViuIK6oTK6e9R2uJtTghaleh2J1G3blt08mNaE4HB4J8ScbmVpUVbeSmpfvHTz8pxgTfLQYk4UvSTJIG_rMsQC2QCf)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/cqaQR9hcqWz2F2n-joy4KcQIlOfLR0_BhSsqVJd6JLo4OSEFlke-QnF7O1lqg1Hl_rRNDA8uVMw3Ag4bG-AmfvkX61wbmg99cjF8jC_LHUbKkxXFCENQM_zCEu7EtF8jN68dI3eBggz_d4T4QsMVSONuRrEuajw6gTuRgSi5vg8mhIGDJno6oIBV)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/lw86jrrZ3kH_mL3IyZoFngvm1DiRUVpgYaMF1U_0_wQu9KGkbcQ2hf59zbnLCXe3GjjIObcJkCQ06em2J7HFL8_pDLWd7CfI_lFVX3E4PWOMrsrkPiszhEOAg7qEWKaMJkF2jENeJOmyoJJDp7Zz7PAdS66K9ZsEdZEmaI_qw_63SiLJk2f7vcsx)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
