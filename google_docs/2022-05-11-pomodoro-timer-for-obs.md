---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/GXNZSG_jnAxmvEKZwTCI08Lhi-unZXGQeKJWUWz295wr2SD12zDq12inN5Iuu2nYN6IJhWEtIKBCtJ8AOjbssqGOqc9fEpEQLfl6sN8ngE_uAvdn-JIoQRTRtTeTPiVgyMmbuVinzA7XzsAVrA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/z6NQoHBUx3WRfhqdQmEBgmzgR4rPxDYtv1dmslOslA0ILJXKMdDQ5y8T3S6RUT5IsikLTbGkJHHoPwhF44kPppD_8tU0TaZDa64NeyQDiXp83LvoGxReAHHScKsghRax8LkkfARE1M-BB_kRoQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/e8iM_5kyrss6Bh2tSofTPAVclhI2y5XvWAxaNk4eMzt5vMcudo-xcgFxFI-u78hPr0Cj_wyRS-m3so1wEJJAN3GJhY81-5gGzHamB10nAlIB_I77O5o49sycB2zGtY5djsHIDWJ0MTBlQ6i33Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/-SF_xJ8T2DZoo5-0TYpF4nJmZUusHD4Gi8_mq8DgJPxuauev8VAraFLsgBVqLznBMlr919X9ZAt2NJz9prSikg4Z7Q7pLV4vsTannuKXO5Xtft0CAkot9iGpv9hkOVyysxRhB9TJpV9mc5JAFw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
