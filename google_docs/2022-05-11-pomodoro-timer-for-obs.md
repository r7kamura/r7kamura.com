---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/1RQFr_bJ1A1VAW95kud1OsN8na-XW1sbWHnnYoodVyjMA602Rn3LS1CvwP7lJLCkhBiidpTYbEY9Uv8NRz5Hx9D3CF8dKyhFNEfmjRfFsiOHjFK16TNvjd14WDm9hrGMec4h8FK077tlDXK7YQtfFF02T8XWdB6z3qQGngy5mKmGJZ7x5SMdGkPu7CBB)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/586kOhAXHRTbKUuvM_e6bY7HeymemzP27OFj0peHBbBdOa8hOtp4E-avYCEsZemQkKVqG9lsGiVTWThS_bjkt4kSh4EgPy0oYlNp6s_ufDpI-bY1q4OW9oxT5kzGe08zVUItwH3BDQ9mnk8g9E5SmcKWe3FjxQDmsKBl4CV94_-nC-kAlwv7W_B9FZ6l)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/hO3CnPNeiKR0o67iKaClyxIOOSWDj8vdagJ550O3RceFrLY_yvn3LjDHX_n6P2AdKW8FhJwF6xtDsiM1jG8OPydgL3UbzTpvIkSDJnszP7PAGTWEnBV29qXuuwlD85raG0_gmZSbC3smO0nedXwt4fDKdIgDHM8CwuSPjuq9RTbyyRcFjJsRjpP9m6nr)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/SXdCj6iAddtHRiXy6y0XXMXOa5aAdhVpY2Y3DA_IOkFXUsw1ah-ew0gAYZW007xWSiveVBtqrBzZmdLFWGKlCWvHFM58bS8Q-8ATGfGEqzf-hn41FQYko1rb-Mv6Yy-FC90GMKLFqVxowUfkbT-zW8jVeuEg8INGaoiqJIOWqankMwj_RgCThq8SLNtU)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
