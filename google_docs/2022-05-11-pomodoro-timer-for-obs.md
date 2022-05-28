---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/p7a77HD3X3DJiZr8WpBA_A6MOSH_Ls9345z3MLv7g2T7sa_hUeUo_Sc445Ey2HOr3Fpl5SajyG5kB-H7igOK9jiELxdJuGVp7VGaLijPrP8m1p-w1u6-m4p-ia_DMUyt6R8x13h_cd4_bhP4lA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/_84zwGoskHCI79oN7FxQLcSywkSsb0wF-RhT-LCHs0iX3G3Oyozcr1x_J9l8oOcZ7OaVCgC04rl5UU3kV82QvryW7UrRf21q5bRtfMjaiwm9zUBg6CGfLGK3aa7tThsxFRufNOCHH2rRbL7PWw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Tpeo0_7RXHB77jnDz7J1PR_UrABn4DK65ewHp85lP5HqU17HU61Cn11TCowdnB3rJMIYCcDZgxw6-uPjnnejV8w1J-H0GvCF__6C-vmBhKnoP6a1tKuZ3ikYKfYc29PIIhkS7PRUMeZb5nDIfw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/AiQgvr3XOsC-CuHFcl6zW5sjxhihCDdzga-ChgdEsABCLtrMu6fi7YrKm4dAlTfUeq6ng4Vhf9WhZ0R4oqn6Ns-WYDR_IQMtqXTIk8k8F9sNfVUh6WtRoTPTekDwajAisG10XL_XddDwKbdXzQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
