---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/xCPgRy4HzDUTh6Km5z8_TWCzQ6wg-R5bIaZGXPITQtOFcqxlydlAk5ta2F1MxTU4LAbbsKzIeAL9UISqFFKNN-FuTkGoBuFcCRL4V8ScJsJ8TjSIbHkE6OOeXcoVCdd4zX-KuHwkXSLZ1om5r7BFKcTHPs8y2dTAfqntLbbv9rygQ9FspcdCTl69)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/XpZ0C5VW9Zqz15qlyZ4fa-MlnoHrTjvbXxS4pNnBCu6liau32J4J35ilBtKtMH8fliMFcbgOPEJUjks3pFiD14tVCbeBT1DcMxJw8D8FLqMsFPm6H4NKXCp2EUWbhj6Vl5Bm1iHefCVFLngaCfzYVbnrBVRuQ8jFdnVFbbaagsIerXkcpUjDVHQ5)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/IproTFjTroCNL9uRMYWCv3rMGB4cfie2o3Ke8qzkZueX6jJXBZ_kC_CffELU_gBSe2tNQNK2-3mnwsg_zRXRTG3YPjXId6gtBWBJtq6yKYQca_Zy9_7VgxWVwuLKtzE-RoN2Z5-we_8NmT6CSObGmWV3b5bCxYZNe5HWZDuNePnzf13sKPtQsw6n)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/YjpqSHB0ddcjhpDhToMeTdM39p7pzSTYWXz24jaNVmqiz4AlTmwb9Dff42gbzPt5VARm6XxzUz0CnEnKgLb3M3Pi9TxcjpfqNX4s0gkCIhTBe07PjhWxr-5ZEAmI3MpVM0QBa3lbPsMaJzkxGVg_uEKh9F9GK50wpv6BbY6jhjgzQW_hmIP1J9O0)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
