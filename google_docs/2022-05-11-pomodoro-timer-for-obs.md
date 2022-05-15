---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/kt-IoV14cNWqHpeYU88kE9PdxKIVyOEqAYlmGd7Uk9rLoEtml2nEyVX4rXdRbconyTWjK7BdZ87PB7Jval-ywHRWQN3wlR3U4kN6_I9ppcJDSX3kwRAsuBgXZXsKiC6OH9vM1gQhuojBOs7E3A)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/BzHnbxvEbZz-E8fK0uTS6rkGLx6gAUKCw9KTeQfu5izVwos9r0Az6KFYdcZlXooeFdVxgEhsbfRCzeQ9CrzdBVdBF4hP8pcGSyzOIFliIBMxzvwsEQhZPxzxkRRR6fH8UCm68iiaYj_EnnwpiA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/fL2yYDg8L1xZpoAmXegQtgUoT2qQXh01ttEoKJr6ZIucoL2UCyS8g-Cl7aq3psL0DvmQDMZps6SfwLkjHcvAIHGmO_9_4zDRuk1phw4q5G2WinTjAZuSi3aP6PDIFaDTgomRkq-B_JFRvLs2oA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/GjFRtMXJUwyrG5Yw0mhJ4C1slRYY5wjqLmgQ7PZqr6EKEc3weYkrisbrSSFTAb3gD2FW6UVrGM3Hlh-8f9WaJF4DOxbEiupILWnzqKtGbtyn2-b7aXof5GgBNXqqYo7hj9MCvvg6_TfREOQu6g)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
