---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/-3uv0WbSVQqCbWy7Xld2p48fn2L7ME5sC9NehquPUiOVFWPoGAKGDz8OoMqJYyFi4bNgK1vtnOrXAvJHj2n3k2tUYE0e-5j5iscaaBTiVm2WS__TXl7uUMaNyM5ML_EjKmrMr15oXhuB181wLg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/4kARLHGFafcf3sa1bFShWcVAAT6l90Cgb985xJwUhFbTZCkSJUdN9eu9wpHPKEuCia5bJfTqCqVhe9pvITrHxMRAFUiXyIgbSLlHY-2Ibr0gt3X7QtXp-WgteAJSj43jC_OMJ8OF9wPa6DNxuQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/yBGrED78_1H1kcJ_AYibrRx5p9GmSYFKBbckfpTAGnCx6_nw2FnWIBE7-mWSqWI72KEfgCkZT5cOQCwxu-4GBwYL6g3i4IEnZ-UvrXrKxej6EH5TVqFLTvFeNlP1uo4cvWZASR8j5v7_X8SPag)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/T9oPEuaO1fPYwjGhAYEgUZNwKw_rG9MYq84hy-zq2eMaq9Xs7hOWbD0OKjHJydf0ky2BVshLsIizx-JhrT5bcWYhLzfSDztttdRUOOK2Rfpodh5DdlbFKhHKoW-suZdfCeOwrssSiC7tidQRhA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
