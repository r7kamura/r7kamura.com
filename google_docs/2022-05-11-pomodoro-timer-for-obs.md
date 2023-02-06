---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/BeEUnEw-OIlGJ6XJk-JJbV8cB22ZY9HDHgMG8mN8YmvZSUDvWpGvFFIZ6V05EKg18inE_WUfc14C3YSnndN6qBQPdN8NoBGuYJ61DAiW5PN5-pc0m8EwUpfSBvsh3cP3suE0l13C4Bq688T-_wG6og)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/xjLNFegf9BKbYK_j6BJInMxH0GGbElWzdD92W6jlw0e-6n8Y1iqhgHjcCWzTL1MiIZQ22H8p9qmY6CIzA_7QsT0OkkuP6T_V67Et4G9kJazKHcvtaejx8-czBA9esXbMHbnPpKCa4iuscLzHxOoB4Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/mcyfXcl1RDNf5XGnNdmXdsB_oBqw6CCT78YGwSRdLpM_MSUHJIepBSRbh1m9qcJ4KMHyqxbBx8fdxMwGmCni25T5DrpFk1Kjb5uolFxH0vxos0jJcEDlAiXaFQoh3fGZ8Ndu392XYavjOIsMQweX9Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/R-FE5R3yadYCwf754ckHqYc6exU2D3rNAMZqOIzh_5v2YZGmIdJp4JObuVQ3zG6UX_fJiGGZbglAFyH2VmdkLVCt-SSp31UDBFPBmTePQNOGcQeHIJjv8cjKJmkckwZTyiPcPmbBehpjXXh_aGXIBw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
