---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/taHPQpYRboS7dIa0Qjelfi1pqU4sjavGPuhxyix10R69QYJrY5rgRBBaUVfA-qMTx1zjjwIOeq0vtKBqOM2j3FGMSy-Gx0pEp9RklYXTNwpyvaLD0k64wQtoiGbWyQxzzE1nZnWsbytPH8FAvdJITg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/veLbdKUKdaT1hkuV1AAxduSdpyX5AJDidLdwVlS1wf_BEELQGPa2eiU2x_FBajFVJ53WbyBPZpSuhE9Lz1PKWe1CxwOizg0fgd5TwGTpg2PBuvCSqwACEWYfQCc3SYk9yglSLPR4HBDSPJN9yvSMOg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/OrzXyMeduMep5YscZaPVyt1DNrApxKNFCJ-4dEUUYMIFWs9H-Jfz3BaNbf5WkWcc7_hLSeE2rnj_GoRYV0oK0u5m38S2KHCEmvbsV0nPbvsZEvTUQEAQYT4x5hBRNgMjVJHNSrNo_nYvWVyoUCmWFw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/1q2qzP7oDTeuL-d4VQyHEfHwEy09pdEjwfwRYqionQC1WHQhaXTswD7UNcXvII2Y4BZIz_n6z5E-HL66W-Rw0TtHzDz_L5WXZGUcTgU9P8x9qR_RFXU8siC3izHkErqqjC4Wx6AaslPeXXriR0tvIA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
