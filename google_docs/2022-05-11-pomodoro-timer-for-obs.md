---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/XpG-lIp_-IjFRcM6mtZwIimrP7aXE2lMi5l01WzJ9BwPYyYRMbX1hXLhyGCS_xoiqw5orQQmTHzEj-dZE1kUY5ATTYxhnvDWE23Xg5i9lfQaoy59E0dEAXdGyJ4lXreNTUknjMZPdQxLGA7GKr6-mCQ-dUdQxPbwPiO7LPMLYT3RulMc6AAQpwqD)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/WzPDvINlwjbPkgv2T59qKZKhL37hHftUh7_NWOG8suqP9BZ7UY8gokzLVR2Ko5vxnWAhMl9aS1tdv_NRLCgcMN16V3wmnY5_1VRAnhRO34PXhgAF_oyns9ODCnWcz2ur_zc5zc08oJJEtPsFLGx19ft-Qp0EgMqxgIdaMm-F9QfOiVIMnvyNE6nZ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/ff74CfuRB3y_gHOU8vdhWuVSQSlt9mMr_zgX_FKOKodj-97WE4ximwoUaql1xdb0MZlJuuqJmVBUWH01C5cszXjgRNnknFw1Uw7rTGrdJgRAVSa18iYR3byzeyjczQOgXDiPFCOkqi92v1LeAENfA0qfLCtyY-BDBcKwHsfxFdzY_UGhOWZFlI1g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/kY42cnsNXHa8AVOwx_OKz-eyYCEsLkmtKrGKmohGFQNXJDkiOOA6URKgidCHccy8EsdP1avO5hTh9Ow8GhnPRkJ4clpZE0a3BnX3bBXaerKJtwQrPWpynmw_at36xOxvibT10Jd5ITpGVZ0MpymCaYPllLKyolYGwfF5xoqYjZEa5dV5DaOumzQk)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
