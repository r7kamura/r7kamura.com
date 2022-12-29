---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/kFtF6sJffKnFdmn1VedHkzEpLre1eqL-8zDoPTdWgVVPPrlkcWQiWIuCXUddEZPfS9REwoEUDleeBcaYahJnmyesZ5fxFgVoJ9-EXgliFH6l_aZ2zTfcrlUtCMjrKihj5EM9ccXtzyq6i7s-900ClkKZvO-eb4lt151QuQ9yTVUYYEUZpzm-sUltis47)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/lYNA0Dx_fL6m3DbhMAMdIPVq3WGz0z-SUt1EsQTv1O30gUqzyAlBZ_Gy4eTcmMu-g0zdm2IITmOaiBBBME0GUP2yHlzKJcZIw8Zi8sqG38uUwzAbp2GkSQDue7M4I4eQfi-OKLJnSiKZOB0C4zLM3gM842ZMc7hLZ3BntQs3VFJ85i4RMKHy9byJPFfA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/aORFcz7m23FBuN0AElzd51HC_71lGr6y1ounkSeeuHwEkL8TwyUK7qvn83i-EFgs3DNrflTT9tEyO1gUFrIV1Tx16MMSvncu6gqlA36OOJOU4epQgrORGc-BsOyxHWPuiD71LoBLx5EAM7_JVQgld7XOjj0f6EXz-dG6WxMighCoz5rlAJUGPWiV6v2x)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/qE_9AisZZk7TO5JCVaU3a3UQAcdftGYAUu0YHaATObeTtYLjx-mBEqKQoNJosMSqd7hjKS3cbHRfvovGXNu_RU3xLwhn_vK6g34Ll6VU84SjjtteLYWTYPdb9Er8IHK-E7-iCOwLZEKqEEgxtwgDjhrRiqxhA0L5kjvtLo8fHRu6ifARUzbI8B03P0hz)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
