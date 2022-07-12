---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/7Y-volng-QUx5_w4XgoF7TJ_683FuOUpBDtS2rR2w3Se9I7P_wVWJO_QdaFeVjZuOh2z4ZQ4DB2DNiu1WUUvdk_ncssjVpOk_v4z9HZnaOJiJCcYp67qiWFKNwf8ARn7X9sTgaifsXfvfZI3rg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/P5kK307D2Ngy6kv7eZ94ZWkwuhsZ3_k7B0_W_7Q1irihN9-yB6bAZgcCSqvW3VdZO0S78ooVAl7fhMO9hF9EmyezUGW-S5ZonJ84Jae20DUGjnHy7OWbW3Z8SF2nFzcL_zghqrGGd_bupZZZog)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/zeWcC6oEUAFGY-vpkT71SGkvecQHjw_YrKgWIBhPpKpJicYKuTpWjLPdxP2zMb82hAfQ8R27hHdY6jcaZ275dmwaldHjePP2ZAaww2ydGeC8DaE31ZHKccnpr1DiMwiC9eGu9M5wI7Y7vdmBrg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/XuH--Mq1rmFgGLGuHvD-eD6Dsx5fFePlmXotopawDgW9691x0JeVN8F4wOPfv6xrRS9FtEwu4CJoylsEDHp-goyuoT6_j8kpvQ11_EpX5X_59u5KcE5JpAMn9EA2_chUKtRVPi-BCgjRp2UtEA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
