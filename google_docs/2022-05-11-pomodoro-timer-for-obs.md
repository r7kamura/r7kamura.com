---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/FatxZ0RCOanicfkTQteJefnBNOz0DtqTyjpUV12Bk5Pb1LX0tVHI3WD2TiYlrzjqhwh342-5oai2G1MqPEQPRN0OFOI6jah5fJ2BfQ1a5NrXo8GaNUFLSUh7QWG2svON5_PixIISv9ENJW2ofJjlWw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/biTRnACniMV2Lt2xyfC8Re7jjFnwx1mO8KHPb7DIfKnkTY3pMIzc0XIYQKKFnPB2vc0TujGYRf_9SvSJgLzRSi4nARUggtEf72JbcON1EkuxRcAHchCqjndZq5UHVV2iRL-colxDddC0_olum4WETQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/HCjoMPeIUAE4hYswIV3bikO5j84UybtIbMf6Dz7C17hQ0fRa2J5WIPj6FkN2aaUPDASNGboR3jVBbDqBE7Qa5uStRQIAY40fK6XPLw2MTUztvrn4VW-zDhABNIMdyC6HMm-zA0agYwZC040TiuuaCw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/g4QugspPEdfDoFGE5iaAZ92ZtR03UrlWgqyWq6CwglPWW63EdYQ5tWkSUsVrySZY82NEMTUel5pDFN3jiBKdnJ-iLRwAU8NtI7P5Y8Eb14Q0rhuwxeKINBaEZCFfUtmk677FyyJa3qOsxIrtGBKE7A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
