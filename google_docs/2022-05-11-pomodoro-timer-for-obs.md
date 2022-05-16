---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/ikFwQrCbAlao0tKj2zluEuZgAqluGIA3cQotFpEclpzE1sRhyRxTCDYQW4xlrDZ-4h-eRQ3H0_2tiOsSWpamf95RMdtaQ2hx_C1cqgzjuy1N_cKdlx-gSEj_BNaBdukXgNqik1WA4y94JTYF1w)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/zaHbG4g5H-7BYGvHBsYypB7AUzT_nj0YKFJ9G6dKfRtf1fc78xTRWvyFeMEFZu-K7iSh1yaco_evVNlViSN4WMywxRUmQGSuDz0gVnV2onHL-z92WdWzsKr2Mkn34TyZr0dsqN1n8C5RHv8ZEQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/cc9EaQKpuy-8pBNQy__mTAsdKeI4ZFtqedD4J0ZybTOui73jYPUbxVzJkvxhIR6Dd49aa8di4DT_-O8cNp_yMoSSOWY_ZaHZDdH9JuQUfl_vRujfj0Vy-IBmUtOdqZhiZM_KHaPzsfvpVfzaeQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/GXPeSX3G63F90HE_ge8cyoPSo0_wP9-C2FbsFm1fXSTFZJ0X0DzHkk_RVqhNTN9PV4Qb4XzviQOyO1EeEjGrw5jR5Pk4tBfwXE3XV0Sz2_UA6KbghpmX5a0kZr41w25CRcm26jxmC16MwMnkPA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
