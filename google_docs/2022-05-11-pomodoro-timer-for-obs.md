---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/EOS86U7y2Z83Tn0hp0rCi7lBHGjJ-gE3rbMZbPJGMcr0eCqkRYQ3rGaosAHIWfDigePaTqzzinMl5BBWesAoozTNgQpFJunrvwJqZq6EgB9vnpW_IiVd941xRRpFAvo2Gy-DyLdk38C0DVaYrkfvZOP7phzoq1syVMoYM9JbV0-F0gAQ91D8VZaIYEVf)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/SUCYiyYG4ShluN9OPsL5M_0mtH-_RfDKkiyPeVuGVpEsB_ebv5V1C29cF-SXbXU8z7CMooVzGCkWWzXZx-0cDWs3xcXXJARs5M8FLwY2Wb7zQd6gRSSAwuLqkEaOxUrcI2BN771-u0MdPQZtxvmUl7N7eQliHzavt3drxeHUwV_krIOQ2RpGsuREZwI9)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/K0UgG6zvA-YRQ3QX8FK-m10KmRZFs4tINwBvmlLh9UzUx2Xc2MnqfFcRFwWVfeA1SqNvDAK2fSdJ5OKCH2Msw7cJfQzLITffg0oRxpWo9S_beRvb9Ule2E3SFvHShKhyfIp-Xkjh5YkyFVpGcscfZAyxEpm3GwjbI-rY9r7RAvizGlTHupi0K1rEoSgP)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/GNY_iDDJ28GVudJ2qK18RdnRkgBvA4csbWEmxd3i1zpoOgWyt-RWPEWryGiMut_1C1s5dHbMM6LBLGM-2D0ooM7HD67RrMr_AUzySCn-WljIqaTJw43fmhFHQX7A8fVD6X3zuTQn8-uYDGUWxzpDwTyOhK5RzzOERwyNVStUvE1ycEpAkMdmPWUO4xjy)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
