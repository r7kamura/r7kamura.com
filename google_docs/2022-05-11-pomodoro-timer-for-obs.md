---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/kfYi8Ox3jRuwJXjkLthg9F4b-G0YxWby5nw9TMMRbj9uAVn_K5K2HZ93SUrGgGHNQ_AfIvVz-NfJg-kT1tGYeGymOrUd_noQfazUk_iRjovaQhoEswHgKVuLiAVekJR8XKp3CSc1T3cGCbhOReY0dg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/A0Mr3c46P-tF4wB9wWvD8T4qxz-OVrym_s8Mj4xS0kcjonDbwRevNRfY_LVDdcP06HYsYf328DrmF3Lnw63r49iD_w5ypyNM48bww5qlZa15O6ZWEtTIFnCos-sL_4RQMN4-sV7L_uRYGK-B-pahBQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/OpRZ3XKtRWX_pvNAFeSvkw2pm0U5cQe71xUfn9fW8ImL7NXoRV1YFh0mIPhkrdT55A9HEtrgyaYwav-Rhx9RTdaWKg3DZ_VIx0-LNyVz1o9FWb0vPn1k0EL3a7-13xMliHKuS6XJzM4U2bkmEmVwdQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/3CBXblFSr5NL4rfWWhwW1FsttEzuqszXygIdPkdPbGRPZt84ukE2-t4-QXcswoeyepry0kyW90wW-I0jBmwsP6SM0zotT4-POS6Corq7xDipKl0dkWGWszPXzylPL-QjykvzwKhrxrNMfatUEe8gpA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
