---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/q8H2rQsSHNuNC8g7JDMNU6FJ1UPO7rSX2D7zKtOSXh-reaidBJyPUXMm3n3Gm4gitexLTErf83d9XhiKX4Ea6ku3CaqOQPsC6cXhgN8Vu6w8n8lqqzRVx9qZq6tPp2K3WLzBAtDXqIJ9cVrUFvH13YGKlkT__d3y5V9HI1GTXTKqHkkllq6wlUk5)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/amK6Si-aO3m0te-E3V2EGBOSCQjwUnaJn_wPuDOIHAIBMxaJDo8xJ4s7kBxO83wVcb3RehXUeSpIKew00MJWtPJ1heuZQgtyu3OKFkSyKcMITM8EebTzqoHMOzPA28-5f1TYMpBYYM2u_IMLZaL-9kbW0K3Qw0yEYuGfwvSocveVfC8cuHbQsp1L)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/mJja9lh1S1_bM63TH-e6vYgCSSaR2xB2LmcEAx6R27TVTyjNOEtn5RLHBGsFf2lg7t4FfgS12DEYZUoRvBnVavqyvYNFh_N6mRsYZs1dmtdwvQyKL0BMNFiCs6ldczptr5A1st_77jrwBGmEz0FG_HQzTkiEky50W4j_XOxpwqGrnWcEzhrJv8LH)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/8MbqWpbYvoOEfPhRc0sCuvbFGbbzLT9In8VsOMRz2Y9gZlmaXtF_f2725FWrcU6CnJv88s0p8ALVBs-JZ3xuqzURjtnyswFE5DzgkI84UFHiEcF4sy_eAc_PZqhBUhpLxxTaqbY7iDQ6XVBCtBfOkTBF6dRPIqk6i9WviXwvQIpcX-Vas2_S5dst)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
