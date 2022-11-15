---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/eG0jzSLYfQeHLR56TqS89Vv_zcUEUt8kJD7oBYXvhQJ4-L0bY1ukTfgO-hTbtAbQynsozeftWfW7C7O_ghPdLTb5hBLuy2huDZM6PZ5RcxLx9Ss0SRSD6-3Q5RFvHDUkJtH8eUUeRsp72-RHwC89p9Etqo1r8bod9DeSuZLHco8hL63uWCGyYWkRzEMF)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/nJT34XGgJ3j4kuvJ3vqGRinSOtDMnHP-LHy_--G6fuuC1flFUJtnWPWnTj7zh0p283ELRAdCXa7PyM2IHBz8H95ZknOOeuU4_g2b_qHVfIOL230vax19P5I3LkITNGO004CtP00EwsSbQbvoGcTI_0g----QaQ4L_NZgzfY6VO4k3XFRSHIPb_uQQFe_)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/TCJ2o60JCj-j54dvQmf22NKeavV21nQghuXdcKxrfYDM7OVS3aXjLAMCChE_6T7gh6GnsQnWFCe0NU1Q1o3orbHDi5VmpoQR_YCHA8Qhmbk9fICbpE72tzrCU1Y7eGKCG_1j8RXfAuHPOlzsIgKcY9Ff684Bp0k46aIbgXQSFsIsfXQ2RLmhLmuhMBKV)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/BfZjNXUVs2RAZ2Yrwvlvs2gEfpnIzC3SC-cNXvGPj7uL9yWz_GUl5GfU1pxNpiUdDUckdQSq9tm2M2fZCCa3DpYvBE3MZ_7PIAYMNSSvuuJIfxlCuh5IXP1CS2hwaQN9Sim5vBOYeI6vUhfuyYGiR-HJWv9JTRPLmLRaUECUf-WsGecQxfPdCrMkMHwk)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
