---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/ykPJWTRW4Io5gJdeMjQF_ipde-E6hXnQHqK7c8EuP6fT7w5YViV3ymlq-Rg5FaXUXMgA0OKKn8WIJkSy0-UgJLeeeFpueCeFgojSZVHNtyBWW32F1JxNEj5Doy_Vbe9KS2fa2_w2tE96QKEd61dUFCyMUztlX9q3mcvBx5u77jb_w9P0Vu2uEzuJ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/oaqh1qTk4_NZqtBBhb729ONK4wbDVagBY-CmUdc9N2B4A_gbJunB6_8CM09RH6tB8dduD4mDqub8ZqPGtJcZLg5bcS8ieGCVExWNr0yBu_KvqnLGarMFaoY2k_PqCUP4WD1eNcTTmbCZR2nU4o6JJOgo7LS7Ch2cjzbMVu7KJJjmV0r3VqlaW6nY)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/zq15WdTuwxRAW3mlbCgCUMDsBZtgXGWYzPBsYdG9r4M_yFb5mxiH-NJ4pc4s-PbhM2QuAxHJCCOG5z3S0JfSilHbJ4ym2-kvwS2MILa-2viMd-sT0E4ETGuhAUtE90UjhJZKiGbYFplp0l7-vvZ72D6Slif-oKUvNBLIh60rF7faQwDey_--HmpH)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/1k4dFHZhr1o_2sYd1lBO3AOUHHxLBhBlj30gG_0iC7SvxnMk68InQeW4dWP0CokUBFnXrLfnt-tVqJk3mUD_ww3rMjoQXI61rnDx6bCHUhyeiKNqJOScplBW81xQIChVUIgmEANgYKz6f0aQHn2xFOA8sCYpLFIXxikWRm39L0o1F4ZODhHax2zn)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
