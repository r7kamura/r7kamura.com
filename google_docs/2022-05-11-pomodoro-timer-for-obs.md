---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/grkJVob_RwJR_I2UJRq8WdXTyOIWbTcA4H2RIArBWmIUpfrEA7ew3xQxOp255utkn3BVFIo5FiHdiZ5RvHyhu1U5auaIGTNLETURQ-vgFi94K8L4N9lsx5jBblAoqrEQOOPUoj1A91XDpv7i-Lb6nQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/ovlMnknUt6AqVdGjaPD7nfSVOI56rICKRk8kmcC6d8jlgcGhHQ9JMpM-FqzSl-VzzhGuU2P3g0j_qM96KMk_1meK23a7i0f4BPI_4rtJoukzZJvfTKdBmV5NSPxsYQw5m_-wuwahhkhM1B6K3ha4lQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/we6bo2IdrDIT9X-A2qKjHXK2nYgPyD-1hXKVqCTC9WKuBEW-ViA5Fj4FuoSnNTdmEKuN4LZdNGtbEcG1E-rzOIDMrNCsZV10VKuJvIh9VOkR7VjwYBgCJTPlfLxeMUmKwb4Sb_n-0Kcfc2wA1bcI2w)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/3cChq4meM5k65V3YV5BtQftldqMo9DLu32C_cZCBYQ_diWH0RLrUoha_0J5LTxBYBSEr81VeRioem37BdHZcmUyL4NlrtOUpqIdgRoZ-2FX-f16BmkZKQrnYcRH417foZdH4zWVNJLfkqlFYDJ2K6A)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
