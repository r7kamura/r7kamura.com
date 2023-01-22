---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/-1Lwa3RoonSP1Wa3OtYaql2zNbG5Kxlx185JyqoY2RbHZpG4e7efDUP8uhf_9lHpvwAx9MGfQ5W4pyplO_zirNOXuA6g8YgPrfP_m2hvjxMB_XoAO3bxB-gcIHoFoszzPLWK8GSA_1tRNHObl63q47V3bNsvPAAlLNHNvqri36MHdsoi8oEcYt_r6G1b)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/YyBtzQ_xj47eFuO1t9zXmn1M6k6w5FC2IAz6TofPC9DJIM6bINWsdnDAUPEu1Kui3O0Nr6Tf7gsGwOFYW9P94nL8txSgs8zCG4BW_fxSu_uH8Bfs8F_1MprIF2qb7iyF9ZG2GcvHhApZ1IitTC5SAlKS3HFIhFcrvGHTAX7hU9Fr0zuJ6iqX0M1t3SSk)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/UdRdAXOH-AupYXPP_k1eL_Nq-SSZ1qgnU3rsgi8cv_HiXb1en9S9tcX2szj2QKnqpBdkategBx5HbwFHQ2AVji0LeZa7mc9WKe835JeJ7dNegbCstQZOGuZT4IezxyvNvvQaB8JbSKxOcukmkFVQ7QQ0r7gi5Bx6iiCU5lW-MS8gj8w4e43ySC11pA5W)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/XJz_0PNmuCgd4eQDZc1sM65H2m3_RGgFwzY80EZXscnX6U7NcMI14S-G82aIqDfP_bW4LcUck1pnr00syK-fL0gzro4NxuAX_07BnNkdBtvnRyNOAGiIiEkptQonVmJOEH4JTZh3qIRaJetquNk0XWXXc8MIHL77K73lZ0aSYnL0C5bn8P8gkpoa0VB0)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
