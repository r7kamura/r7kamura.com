---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/_pkmPNb2oJj0f84HLG2teOTuZ6xk2MD2SXPL3dCMTpsIQv45ms4zlYG7nO0Yskf7S36wCta_iSvVlosJ8rV1a3SqUDz6bdquWD_lpHptrGWV9FdWoP35LugLdK31JBTUb6vr33a5GDrnSmdOBEnzwzsMWYbC17B1pa03MevF7CfbNxEwI4G34l2zAh-N)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/vHB1RMpJP0YT8KOHbEb3us3MaZ6tc4WojN8h3ine-GkhmLeVK64Efb7TYnBVx5cMGhvYHm8rc-a2XRNiIQ4iPzPVYgGFpUveobuVIvLSpF7ZTS9BbZDHdODT9dBrXsPtve41iP4d8A2XPQy7XhKpXQlNGsc4NIZIUL5LQGPB8dQX-csuKukrJhMjt0xH)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/0Aa4nQZv4iSLkhnl7diwH6cjMo5cTI2Ie__HUyp_swE6r2yQDDbBgUsQFGYKfEUMfChB1Sz3Ymt39PiueHEOOt-HcH3q3qA2gHT0xbp7ZFpCvQ1xwx9kPiDND23Ib1Un6N4a3jL3CIJJ63RRisOs3XrZvpZeCoSqE9cWn1IoxXrfAt2YI_gYKBql4-R5)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/GjMaV6TjGwUBqPsj2UOhrUqu8v_TT8QqSKQmHjZJ-YxcYEe3JfUPvMLuHrZrAOnyw_Qz1A0tyVd7rimBUyknwwsBU2wYDSydpOQxMxalvZhLs7BnVgRZlnkeHkIjL6hYY3IVxSVekoUfEu_JTasqMEhzdpEG5B1ZTwzotMZYB0OUl7ayZSyr3062vmbV)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
