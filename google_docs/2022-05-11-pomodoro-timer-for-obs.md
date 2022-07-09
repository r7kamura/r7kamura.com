---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/4mHgBA-IpeYAY1LgBd9S6v73oH8YiSAp8izXF4-90JequHQe0BG2Llu_WxI28OqTkssiAg_I3cmxyu1ppxyDZM_HcCNdUOTOpNjq1SXLTWPan__jh1Zrq529NXhvkBgMRD1NVk-XWHaU4Uq-Lw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/BSxc8W1FUaA4GeNY0NVVS1U2tzZlWlP86Jj6bG2c-QWb7PJYDY5tMPiCJw62K4DRC7pWzpeHTI2pY0DjicnQ47elEi--gXr8fjpb1PWZOSqbq4u3US3_GHEguA479dEqCfBYsV2mJGzVwXT7Ag)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/czVXAW9on5rJ611xVpaTKs12embHBEBSorQTTGygDcHJIpoqoUak_3BcLxESEr6nVIFmbLbdOZP4ItxTuBXr07BRScMLfECmYneEA4LOZUNelj7tFSty3m__UE17sKAvXR2Ctc5kZjX3B9QgFQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/J862RqkYocIRGGKN9Qkyhr_wQv1G3EE8GNHDRqh_nKJYQy8o6myOCa-gnrRPCqw7Ju7WXo0ZmD4hByyMxI8fxbOPE_ne6MgFilNyxUVYGc2CoQtWhYyJWPAxdpIFrwes5EdFe2dJHDqhZwEczQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
