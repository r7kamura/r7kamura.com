---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/c3j-PMGAHrJ4DpxEn2kQbv5nnbrsxxudaReV0-zUtHSpq1PgZKZEvGG9vXlroCnkNlP9_BVrbCW7DBr6WzBIwdNQLpHp6_jRKtMsmQyj5iYIaDMa-h6aLvQo8zH2--n0nKxCNE_WaLcH2nrqW2daT1P3Ivkavpkq9qA5-Wq_XpxakB-C3jrKAShcFeAT)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/2CiaOZnjP7YM26ab5nPgP24Fj1eLDGY9UbMq3IXdRKmV4xoxXTyMDsbtJxx_8Jmub8ob1opoc3CNnF9rAmfhAIDs4J-9tT-fqAVlMnxSpsqvz2SezcIBYZMbs6rLBJrVAsmjF_d7_6c9gzQcYBWTJWGQCXi7XMFo2jPHTpUZvLpFol0gfx6j1JLTv9gI)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/IhxRpQHT7IqSD6qWHuu1HDgGy-sqG_tCMo2RR7qyR_BmPtDEaxB3Pznx8DBUyC6IjSjlffaaVIAkLUesPdc2YExH5VJnBc5ku6gdrpjvdXW8Dnx-wfTIq5rlXW5zp1nOatdoQxtEmjMtrvKjZAm9XIQAXqoB_a0bzTYV1KBRzogBcv48YCzRgK4XlRyy)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/9f95ToW0WsznFhAQ5KlUFjBCPrWQwqGQoMlepDhfD131kCG_AEPmhA1TKg-iDky5SCreEjOTv5M9yTaAhCYI7RxLxgjF7y8ZK4Cf5gMuKC6dwtW_NBi0p6-Mikcw5CIyj6lKHvW3mgvvAJzdLQP3LqL1zl50KjrTFMWUcmNU5DQ7iDQ4q97KAqsgETNS)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
