---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/DaZv1kbKEsBoh_UKTVxNhZ6c7-zpnWt4g_Nn8m-WFsdCFSkTT-y6R6q6V4bJkMMNk9S0BGVLEplCYqKr8yMFepbGZ0NuNBIb6dtQ4tkpWJzZcovqN49yK4cNZXXXkxS7awyCsas_-Ud1hi2Pqw03-pOSFol4oOn7DEN_d6JRzVxR0F1d0pEIrEUE_L1A)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/bumXdlMCoxTqVT0KcTN2l3yORpJROY8YeaLZjirRUiTNTAquYTZFcsSBI8V3gPA6NcrsE7AKRWaWku3xBP3o4ADhS87074mUtRleloiUDtwiPSlQbMeCRfbyswPCUkzsRJHBQo79vRmUiPcGhXUZuEpjVCAJalKibvQiurvoR6M9Ud1sz6ynXkSlOmTq)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/Ya5mo8E5s6zZXOf209HDBoRJICfyetSNKKjTGaehv2nXsWUyijf9x-N2sD4dRNYpmfnzfAH2MtWfSWKNfOrYBgIPC6hLi95cqJDIqmTO_PjPfIw4o98Y7qcC43qqdZqS8jRgMpbempC_hwAY_XVVoPo_P6wc2G2exnlxf0H0dd2yDEr26_mg0aBbf_eT)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/yuM_qj0yNvBRVBmBMwiHoSYhZvFfVKrv1HRHUBrgbw7h2AijAuqzf-vbJS7r3zB8Y-h8JYqXd1FsmVSHilOOchaPnWpJ8gfVitoztJqkheV_yhSso_oSp1rn9pj063a0Wg3ZCgSvpePz3b8wF-iNrl2dFkKPRLfhJb2EArA3GPZBrBL4ggvpfcY-tqxf)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
