---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/EYmp4CD6fX_TuPwEob8J2NbGfZl_ep6FI9ghooYi8pxAnfEPn0Ad8_qGkikENBIlLxzRyt9w3DXoNurPwcZLvBvDo558kL02MYzulEQJ26BXjvpBWeAUVI66eYEW3WYPuKCzkOTQgUyyAjauUA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/ZSTc4LI4ggRv8cD8LdA5vuyT5CRGQdXRrqfAKoWs_VQhz1H4mSvu9ATVsCacH0GGoWkMNqAcdvv0nj0gi_h9gzIXsakea_LZboFppQcAH1PGt_q_7m6vrn7uKiUdR1w1-5p2IepDhP0aGDj1fg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Tp1ZkHBlzbiW4eEmF4Jrb3WhNtRKkfAjRUJDnAxnadbTGMWM72_ZkIG9X6qrIjapLYKvfwrcnFF11sc5w5cvhZkOXDuKC7zEMo0dkXPIMJks5s9vHsCPGHZ8xiH_BLg6548ZMh-Yobzi8g8ewQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/8yXmpRkJIETfJIV1Iwi1CAS56C0Ap1XjRUhVGqIVGYFra3DMJ7UXQitq6N9Aw1wjyrh7rYZ8Y_Y2t40NxkoVSOFK_Tp6XPXPWmvd-tH5im0TQjiYqVmLMHM8m9h-YzNkr5TY4RN4_CpGISldvw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
