---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/mpFYjUmi5VYyX9Ca5X0y2QdLotDUdhK8WLBzkvXkGnuaplFAouFBjjBkT32n7__rFbDcrbXxKYiMpApi0H_G9H87mTtj5ioT2sWjwu0nySuOMC7hM7EHPGVKVaMw5QL02Zygp1a2nNVsAhyddcwTig)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/r3E4eNE88WRdBQt1KNUgvsoFqDA7LeQ5kx1bqQwr4_PLu14MvS61TQL8cdH7ZKNCt29MXpIt9hJ1BZZ-HkH9e0Of6zXh_e_sefwFv60lGHE61saBqVKsGSJh3UP66nsTYE6Q0NM_8qugQuENSmlGAQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/u_tq8l8yWn2oRB1jrrp8epz0LhmIoNuI0Kv77P_ipX0Z3s8_MMwWtQ1zjilSo1ZT-Q2x9lf3cAR8Fnqk_a-LF6LbXPd0wNR2oGNmSYVDVgeuQr6XKzMoLZOBRhY3CdxVrwJVXP25znHC4KORPXn3ng)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/4cnfl9UPjPbkFklHDDG9-MWOtpqr00EAdAbErAN6033pz1dcx1u00Bj51w5hnq9cXwhHrsLoT1TcHbelgDlD20iEzsgZAubnJZxDp6owuRZtbjAE70LTd_q_V4wPnt2YkIHqSMCrC-pXIwTIhCMVfQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
