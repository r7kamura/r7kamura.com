---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/vI6dEYvNvHW01ID801UNecyKsMBn4eGeQIsZwejQbarshgZDM85sFpQbpla9MTKpEvt0jtdQ8A9pZa1joh5vMUsxZ0XK9R_qPpQa1LhIaZqd65t-gHK2iEH7TDjTfqrzPgIs89mfwEkF4XmTtxlJXleTl2SzhNwmFXDj6EMD9S3KwYZyd3Sgeaij)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/X600_xbaVoo1n6KfDBL_UM8NDTzC7SG98FJzNVcu9aQe1bu5qBSw39JPhOw6YZ0zs0ystR1wN6V3iZZJK2CffOVjnFWr0w3J5ww-WlAsl4J-OoOBEIzxMpNgoQIg6B7yT2nWxkNerphrRKe3IuNN0OzKXz4KHfGkGhj3Lhf7lmdQN9i3s966Ni4K)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/YUKrMhmGa3IptMg_amdJnRhpz_tRhtGJjrkaPSRmKrek9TcuhLXuwp33L4w8uzr9WwZ-qrWoNCidOdgJaoAYItfL40c8LwiBO-eCo4yGQeIB3-mjqPhtYl__Bh91ix8xAkXDiOEFkeEN8QGHvvcabXus2y2-RF6In7U5NioJ6ZtUN7SMmEt6BgRA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/LtUcjUmlOchXnlR_oS_X3OyggxmHRDg0AoTaXekkjXzpjUK2i0nBEAbz-okjVOnEtvixi9lS23yZxmi3lJVYpufiiCm2dS1HijBY0cd18GvaPc788XPSYa4uyUOGjAd7lxNHSmsZO_t4U8drpigR_dWkJo2E5cJ8gtsiMXV7KknqXCiUYDNzSO5e)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
