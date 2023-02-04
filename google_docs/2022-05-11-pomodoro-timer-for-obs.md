---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/ERreHT1nUbcf3nuHIL1wxRQsU3KaMPt7zgX2rPR-TFOTleHKo2IumE5rAplMkq6A7DyXvP9nOn224_IpmXiID7N1o18791fRfK3lQWZM5l1H771waw30AWNxMwA-mmwhdbVk8fp7DkMa6zsifPoYDQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/fZEMy3j3BbNYVgqfRs0ov2wwHGeAqn5NYtlWxxzEn0dZ3TICqeWgGIf9Fur2FcfIAcNXoXb2eLIRu0e6oxHMx422kYzWKipHnGn-cd2MLPqDyGCrA7j4bgizKnmd6HTJ3AlEhz6lqknAZ90nXd9Rug)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/CNFerywafunmj3Be8420qlKrK6WNQcXmomRZC3mlbU9A0YIIPBadE9t6PavTwR6oKEixFAL9XOWmd02PsVTA9RwkufFC6vIvJh_Ye-SrtDPSybx7ERcTfj7H5bBEvASeGMmP30WxfH3rBXy6RFLyCA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/A98hx0aayjMUzJeTP0LkTF-Yf4l08hp6B2TbMk-A0crYFbHmCdSAYSB4b_8P3RYtHoEAvVJrxS-qtg0q-7ij8UM8OQkj1ZwMUJMGT4pwNJaMkLh-Kc9BrBz7rWho7xOVUti7xNIWL4ol3NF66UvtlQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
