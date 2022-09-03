---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/HuvxqftBjpSIAKI6-p1bD-5kt6IWiQeHVff8lE08ebtUcviRJej1CxPm-CFnQ6Lsov0o5mXqTdC5EJ9JyAbkI_qR3QK9EsDVNtjWPmlTRBIiRXG0jHr3hrJz7XbOJq7PJHInhms8K_Wz0HLcr3VYSAwjrBy2e15SVwv_UrH5vbf3Gadm1RWHAXhn)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/4gONyaoUKHtYwiW2GYUta-7Wb279UKPUBaWUk16pEiODTH95ISuo-unkWAgulGYBooeN7FIbJKllXCu0Ay0QkakFNEUo-xgOdm0h5dj01mdtxBFDm_esQwExbA_qp6aylCxBWe6QlKilYnmp44aJ9yITveQ_dZito_u0VGSxUbh1agXHIto93XmG)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/DSLAeJ_fzQx4n7TJHKX2tnfL6-OW2wVK2WlRzDf1kJAuJHBkafGtvKNYeS7wYRwq8l025DlB6JrP04v3g2srgMvxEzq1Iynt97BwPqa1E2WFNlaJFnN56QB_u_AaIqm22bfASYe2-WUd_vSsoLmBBNcVvGuGDZslXIqrDX5rMAu-so7eGf6y2wZO)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/k4xVjQce40dA0JQurKMh_c_MDrNvhikyx55YAArSqtZ5AXhLvD84ki6-dGYIC6hZ1CvO9LWedv1JJSM13DJd0hn-7KSAz3yoNZBhfoICXysTWb_ms0EJznO6P9qSaQQyR6K7y8XZdp6i8BWmBLpNpSaeBSwvLceLQ7rRd5dLruMo-rUGFJw89JZl)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
