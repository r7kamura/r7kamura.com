---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/iSq9iGRliQbdY2N_2M0aU7_L8ADKGf89BOnrMHUak55VZkEnrIvNBxIKZTRTwsboh1E3qvMthk6TL28ybR5GUJkfs5GOmB4j-zF1VlKF2F7yP1FCfVkHeVRNPwZAAJSX4mDMefwUMNYExjUa_XEyqmh6V81bMF5jgl-VHk4t_62ePe_0k3YeFlfU)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/xvZ-23OlnjdDc3oYPDDtsw6mqGnjqigXKPDwjOCMJM6eNLpJq4xHAPR6UyL81pjQ2Lm4lU0NQHXQycEWhyfazja6DmwFwzpFFZhmxcs1LFAidvlQQ3NUMQjDVwZNmIcIi82mgxND2bAj5emVfWMXKPYOg1Vf4cr3DgxS-6M64U5Ds_ACUMb2Mwf1)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/FWH5azkbj6srXwoIlzTJMlEqNt412X36r1Km3oQXI6jmdNU1FD1MqmOXvYkY4Lwo7s44F42xuxxQqDJOKWDyaVVcU75aFMXs_FyC3qpwuqJoUTR13r5IftRApjmGOlPKlZUmuV4CRnNz9Bhvb_U-IzfCB-9284fFl73e1Wf-Cc9hDAFdkzvzuUaN)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/Xay133tnO3qVqdrSMGPc04q6ZM313q0u7I7jefTcjoNmG7QONxMbiMk64YOu3hKvJ7R_-Nqst7LbjBFXPGJKRTEuFig3ROLVm5-iK9zGZtmCUPrgni9ifNTXKSoQTmUG53AFWJfYMqA0wVLcQEorbPNAtG7wvvBdIXrwJu6oWFR4K6GZa90-cZPY)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
