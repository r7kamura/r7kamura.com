---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/4x8o-PBAo2OJlox9bfYZMo_IMqm-KWyTGnzSS7iQ0qbHO3dKJOYq3c_zau7p_8jppT61z59GK41fWcF8sSGSU0j8rw6cQEp9Z6Edb-5mgsgD6QhlzMp_BrMYqjTVWGTJlDRU7oXqA-YYKrKp7g)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/IulyWYv9TixpJOlGXqC-l_zNHdwLY445vtC05OrRBNO5HFGqD40BpfU4DIrNzTA9Vev9XCsrtEKN8bmWjZWnn3tLjuC_3XU7n6Bdescm0ulcu7PYjzZW4XdwDctqbUpQjOMCvWoCOOtygWXuWA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/yzb7ItDNY9E_-tjfKERw322k7Fok-4dOsbuXzuyRdMzUWtwzKWvNCzFQoI3Ds7LRTr2k6Kt2EiZmSbWi_OXnuisTlUbZYb54p7WX72VGKjXjKMQjizXgorF_pUFB2bywr4SprHVk2jyCLOkccA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/d_TJz6qkK2zl6e9au6OIdnbKz79OIi-hfxVkRa-fqNmWg2t8C1YwbRF15p_lfo6OgsV1xdoCtALPtm6meG0yxrCtPGUMtkY2ncyB6lO_GGVeNSwcTNTs-rdgs_TcUPkvAN1iPaWplDHTIqLPhQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
