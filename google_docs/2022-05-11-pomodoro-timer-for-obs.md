---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/4QWGSJ4FM-9Im_xVVQ-PlVunBYs3esK0BIBJwtwy6SdKxKxNrwhAJccItum65F5yGW5XM0waYyMj-Rm-1IaMbL2RHX1N10Dy_-VwiYyLbeNqU55AOk854vtUVEKei2IQ_jqW_dHGKr3hyY3GsQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/aik_vFQTyfL4dHhn8XFzgT3VEgf4XmCXfZxktDU0s0uzi13KD_rOsYhccyc_AEm6-zgBT8JxzyU09Re38gxjsDk6pKioXpGdnA7MKmbhKce3I6mwKBmlHK83o9_ofpNN3hNuq3ND7K2So6WWVA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/CnWbeakL2F9-ME9M1lfI0OROvXuZy0T0xKMw9-6FuPShyWeVzMCb5GoNB8qMBy9HFLUVMSBOqXbb2MGVUf4J42muRSSY-o4HRH30rpYOE0YfTVWWbTLDlGiLIv-ysZ3vxj3yonL6s2mgoalo3g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/2gW61YDKdZUSlALymkb0vqm2MMKhH0vYdilCh3RLjPwlAixHCJufl2DmaRcoCN015zUxMofJRwNlu1Q9rvcN15WfH5yoMTDqQ53J_hxtrJMB5AltRx6ZK4WIsp-4ORTv6U8vWGjwPloBk5CXvA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
