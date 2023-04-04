---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/oEn2YCUQ6I2v_KFXpxUxlIlFTufrQuZArqOaz76XQysTm2r1QyNk7wtIdWkdHwIrglzfhA_w4qNiticAfb9BMt9keBqcjoc5izD2BiedywE6dG2QwsK4muTKLc_3nwpEcsx_-6voIqt7oqqVOrnIVg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/8RinIwJMwAhh2YNx11fa2FYj3avnubh3Dvw9vtnDOQU4OBqAbdlPqfnyXbFLfKxhcVi2ieXS1MsELq78f1_mXegzSKmFlsk-nfL4Ff8IXVUZva443apolOjN8vTKw5yrdV9k1sh1QANzV1q7yy9ksA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/PUtoIYD5w3h_UHEp7vOWQRrkk4clFGrTTdgYHm4ixfkSehw9ayFWap1SZd1cLkK6pv7AMEvWV4Y35rUKa-xmtAl-FLg5us_kf26FsLnynAm0ZiGvi8S476HDirGXf3xyWnsHxkuHSLMsS7PpCFCDSQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/GOaW0QZLhrnokW3JLawe3gdDoiwTNSQ9eO7N0ZDHeg81AfDSGl8dceidnGzt8JKo9V4A3CKqY8J01cVNJNmDG2HkHbqZU5c41p6G5zzsAjquYgcWUmMICLDm_0iKUOVpDOk2_kCXu4_BaHe611PKzg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
