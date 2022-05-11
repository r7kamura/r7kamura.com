---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/JrDW8j-w-O_QKs3jEEbJ-LvV7YWAc04lECdY_dHHr9u5pVM3Y3Ucf7x1W031-lIWjOgGK-f_EMkkNwSL-xLDRSmx3eKomioZKMrLxFr5GBlNGpeJdP3a7SdsWFSnLrYzV5pTsgDtPEQCNu9HoQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/Aqi32_BJ2HAte2T2fwK4eqpWP0t5841NcDyhvywnrMN3LFy4IBuzB7mnz-ovXqm_DYv5F8BoVB0iei9WjRSAvrqn6am4SBbQ3F1CseezhLBHFDzrMnoMv12Wxc0IjsJF-v0JEg3eqUx5-tggWQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/r6ukn1QyFNNs9DNjoYGero2ZjPudwnmhfu3wWXuM0c5gGewW1kOnGN9wm42sR_sd87lHoCnfdKqfY1XAHFz9SOoRMP_-wfVicek9m4sMcZT3_3JMLlDl0lzSX5XMEl3UabZqy9jfqdCJ9gVtog)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/uxRDDO40BCRisOqfvxNKKigAUaQKGHVIGZrU9TMsRH6x9SOXoxdbSr1rQx9EKz40zcU5Ql02heTP4cmlXpZNZuEdW7xW31aP1kWWTyXkQqKRUYYsaSvq26h_6AgQvlk6lZn5_S3pv--eVk7YCw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
