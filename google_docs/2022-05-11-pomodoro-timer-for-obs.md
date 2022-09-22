---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/hgHOVaru1qLAsEnATX6VXWX_O7uoclUwoe2Z3mY73dOj_vWmuKlF3hVopis7syBJvu_2-28MQG2g6OSn5aEcTDYszys91o5wvbdp1YnXxXnrLlZNEkKS06f7tmQbcRV2pTZrwkASda-KkYmI9urEwWlScuPN7krT30s1zyiAewD00Y11XgxJ11Jj)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/qEXl-DQg8A5UqX2geEPMYjT8syKxDtUr-i8SuhWX20C3QU6BEBBMpxwpQZo3_56T-S4HgTu5P3mR6-vvw7xWdk5ENwZFGOzvb_wbaiPPFW1wwRL586QXBXZoQpigvVnA5v7oCFkFdAYH6c5dTKne4iP-ay6KTdUTTzx6fky1PUsifxQYpqyKSEWl)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/OThfG-YcI7U6SoPOwY9QM170R4dLVKWNe0hdk2FVj8qhaU6LBPcTXd4F4x5s0uhQUPhd_TWbc0T0GBa4c5vVALQgypQuemSJh0Do6p3Hl4359Msb8eOZ9vrPP3tzrR0QkgNPt6GhhPXnCz2tA1ohZ3hbcb4rE0TtCGOV7g8AuPqe3SdVAT4YFRA-)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/aAvj9kuSpsQDu1qbczecHKQK_KGHC1Yeh-wtJihEGiDg2iIppqv_KWR7sdGlZub-tIW8F4wCOFbkcXOh8Q0xO87ghYf08kM0haet5pgSJPp2cCzSFny7-tm528UTpn0s36e81ZoS1qfc_fNTeya6wnKNli0pNlYgmRcMBljzIMonZCRc49tp0eeJ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
