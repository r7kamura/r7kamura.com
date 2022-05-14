---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/HPGQC75Om6Ox8yFMqax1ddxeHJsUlFJQSWShJm9xGUv7bBSWcMTiq0Hu51EH7ScIlO4YrRc1dAjJsEcWfpagHsg15ox4K4yeajYnGnF1lD90_TvJSsPC-TBglhLXbON4XbDAkifE7NiW0-tcDQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/TcdyrpHP8bZZWQQc-WfRNHkWBKeN8PUJAHqcEPS8uKF9FUsikBfu5SkuPcIHNl3_6tTApV1bSUu4nUkquZ5zaQ23j2ZluoCPZk8MQa7hKgmPL_9HpU2P1R9PA2LD9jtP2nk6qwAewL7a7XxHow)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/G18h-8TK490Aqz4b4f7DyHZaIWlYkQ1C_hEXZFz0iD1nKHW8VBhtYkYMlAgMoGt-t4Tae24xEGlKl5TSqQTjNXmTQnkhWSWmWZ8sUDyE2RqV-CyDzh0exfjprt-AOtnnxPWPeekHUS8F3gzh3w)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/hL9rzmjBhRq7RUbmV1JeRf9mcZ7AJ9BW1F1ZML0fgIna1plkPKoeX_Mb5KEg4uacE6owoanMeizWbShqNMb2XyWXKl8oGHl2woiO8ngjMLpW0g5SabI51xuH2VtfAyIZCaL3KUTTVu3xVCurmA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
