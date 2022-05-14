---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/8r2BzKcZd75kUU49-nNSm5L4eAx2BpbULn-jDL55kyev_uQFp4aYEQ1nJuHJRvWShChpkAf_mtfC8xUSgKLq76SJXGD3MpWXoIOyFaxE12oSWtA-ezvB7yZciF3CDHYmwS9zUIC-RTofGItgnA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/8Agwf93ek46XAJBdlmJZ77lbnqeKXTh4h5Qz8vJ7_YUEh2iNjoZQdNVYmWWUtujUSQrKay0loBzgjhcjf4R-60OHyB2j8UX71khBfOioDbUo-_1NNGKlC6W3Kgx5gwwPtlXlWxlcKrn7Qxbdlw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/Bww1PrQZxS49UtVo-loS1UAIY8dyrSFn7wAwBa7qzfUlwMGd-mdw9xvY9pZoITXQt5YaU26GIVRt7HOFeWy0SCmqsy0sY5TCF_zFP0CCSNK5ZEakKOluE2gPq7AiJd9UYcnAndkZNf2oFA4bxw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/OtheXc-sL7WsKR5RlYmwNo8T8ton5nL7z7xs2nDQ6VnstzcNIQkGepkHFvmdecgpMMyBwS3xz_s1g5_4hdgv16EDfpwp4C8YPDljcAtp7IK1TrKxV3DZL8w9c5nUcn1PwJoFHV_g18dhBbNieA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
