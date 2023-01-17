---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/uf23xr54WDlr1TrurlHZbVVk3c5B5ru52wDCS_tUxMKf9uXBbGfGlS2Xdd294X7lUywOXJ0-ThMScN33QY2tq38tsXkHlQRAa-ccPk7RkFzSXUr_mG8yHUyUd1S2QL7m1s5lmk2qWyHKU4SwWTWn57hGtGE-I9TZnYtOrW_CdrQpCr1tpj-wOvvvwTjB)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/68XKkaBNXM-mAF6T62E5EP3DxDiPtq8gnH043zFTPkBMOrjLi1xmqMHU-SRTHVLrViOH5PN3uDk5r0O_2IEhomvR7o1OytFlB9NsvvbpKodm1KbMAj6jG-M46XpbrBdFoEOaK1RXkj5RI_5MI0LxV4CxISnBrOiGygc8ngd__MHvdifYEy2O2UFn-c4g)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/bVuc9yqzyBa6Q9jpHEaRhVSzs1MntNQpAYYza9Oxuy8NibEWsGJM97cOWpwgvLIeWI1nHZ3cLp_-Yahm8dZQnZ7fpSyaf9jSEQOSWiNdYUPLm7sBtK5MScftA8LegOGFgGRyf9sslWEhV6Y76vu-PjUTKCMuKPWGxSLQj5_q1pgTSfY9gromutKINGNM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/LynweDIzGSXUYwv-NaxU6VjIntgToUoWV5gCBIzE6ND7GgHu9JlbAZi18wxfF33v7iWNkwThgKWCY0Bsb-89jCemmYcpDu_DImqtDXpMCCY2z0yGgiAEI46D-7n0E5lg-H_KJLrXcIKZOysyyruRTdbzwZDs_oXvq3FLn3UL752i_o9m51PfcO9y4kJR)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
