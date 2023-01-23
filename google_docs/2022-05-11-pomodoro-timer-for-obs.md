---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/B7nn3Te-dkjsCbHU6jVBjCAmeoMWC9CI2PrCIaRdTxGgEQvnqZm8mHpA0UeQzlzTWVql5xhR11hAV7xcwda2lTVje-J9W8nUB2yOBQ2Kfynle2f2_SsbzAY7hXondPYUlX1YrKm1meu3iC_9mKmsPrb_2XPqy5oULyDfiD94I_YQRbiQADbi0QVaEE-B)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/BwtVmZ9xW4R_AH79O6ikyOW8R1vJj4VwCu6PGpnup_h1FWwgS4wBtyAMLxbJ8oiDQy_A5lgzma8Xfh6WN9VV4-vo5qQ3xqFCG-iz3OFp7zDS6rHguBb4RW8ftuIBmkFcykhPa8tM2rfJHVMDxLZ98t1vusuXNwLrnLwQEK_huUJxWXAgBlDKarDgIllR)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/ILMkHil9axHnVG-HsBeTw38m1rXLcqZQ6rkBZr1Prpp7Lvz3dbnWasxH6XF4mkSsmphwoPcLhhaKQuWsGvhuk0zR6R0EtuzVs3ka4b8e5TgeIdSmoVK1JMaxYpxHGs9ZCQPs7bZrl1pygUvjBF4j1McmAq5mhib8BhYoSn3OW_mOfrAPaavWvKIaSq8i)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/Hzpsmcvsh_kqiz3sBn8ju0eEhfpqANXJYP6xlvYPyOW6lul2ThlZWEotq17gAyVI5xRk4CpBaxRxNTKqe3mbd5rZtXBGEPjJFVDwPZHtgO1vExNcqfpB7gp8NviIomyf2USOPVajozGW3WBBk2k4zmRk3r9n6aE1Ii9s0nFiGqu7URgSAnusTFhPNpnA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
