---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/fBiYiRuDddybDtCDFYoJxh_3Q5c2zGCHnJGm_9QYcYNlibaZhMp8OHT8rNxXmAB45ZSgVFLfROX32Ske-sX118PS1T33jgkrxZZKtmU7JSvXmcPvOx2ML17UEuROEA-doag_S3hSmYTs0Y0sYjbxSKqkvm8KQ28N3VxR7mS3fPcOQf8MYcGI2kt5)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/j4Iv9X_i-B5SA4QR5vv9RGoIjdyBgLQmBRYWtdZ0M-GQX2fO03RuZlAwlRRHuNBo4IJTMp4JLFFU_IPliSlIc1dv1_9mbadj1zPS3yLZf8x_SYLv7QwMvgD-bL0xCp_tU1Wn11bPydrMKTFYRvPvQWdBWS5eJsCajgJuHkn7af4I2sFcUfWsll3F)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/ZoNqhwP8TkUXYPd4AN56_rWOomuEF66QT8yCQAR7WsaWL4dvTpeWWkQ580t7WcZpvmPMua9NyqU9Ctlib3GJOIdF9tzN1Ypk2r4JI-ljlKHbXTb5VC6B0vNcqOtesoR2rn9FfQO9ukwTYYZuyNkNh7rIAtND1NXhCwleDnRlfqYw2RZafiqVG15X)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/Ty9naGe7DD_7LJ1Q-3kBInI1OwoYfKizGv5DCh9Fogys69YUlSxyQtVfBkLHGS9TkInTe1CsZxSN6hqUu-qDJ1NYIU3TYDwSjmprhshenaDOCFN6defjmXPCrH1WqYEbINSWPcTud35oocaiRSBiMcIoYwti1qiDA4iyTKA_jAFD1PWYT3PiL__x)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
