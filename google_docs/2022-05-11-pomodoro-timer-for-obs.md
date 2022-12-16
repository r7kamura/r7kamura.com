---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/ndvcEiFeUVP13OHNf8EniQoc-BBC2qGtC8oFS4BO2UGCKH-XTcw82lGjWYy_PkkjbY2rsnQR4LO-vKbUbwQVTLAVEnkho2q14vtZaEQs9lXk9TxWeIhYGFuVFZK1AF8830qhpFLCRPVNNcJhJBhV3rvm-nfLzMYwxQdvJE92fatRxWF0uD5NYWYlB4mk)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/A7kMkfBJlZC9Ny1eLQBFwQKdre8NP0DlMdsc3wTnaCK6Y4C6CdtkiwRHQtnViTnKGu30RbWW53G3HfT_9EGysaTOc9yBd9XDVSceb08ssdpqKNxhYnwDUNqKxYOtrLQSK6PCjwY9TmHL3JotA60LAgIKZzicjhoEtLGnLNiKsMFka2IzZxG6JXOwX8vo)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/i8XkuAe34VQ3wdBOVZq-QPqq3T84lCRqTUWHrzgok5KH2v7VoG02hJYn5TL9VIKqrKEWFzDhrzCnrROaDELdU08pVcBDW0ibT4QkZWCBBQcEliBk4_BW5BKan1f21XiJ14-7IuMgN99S6hV3CrZDsaxt0S-uuIYEFrBeJravqqi2LLN2lKiOEXm5FT-d)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/yug599VFDNd5a6qQYVV0VrfiyvJnBwXBdwtXTHrtkwnU5ALHZhzTjNqNfbY5Nlk_SQ18OyeK_v34h_IbIkP3mVFx5DpsIg1iMudQnXbIrDj9MCFgUxzqaO7mqVsQLCvWdWQeJJlRcuxLHXHMV9LvF5ldGCefqug_AmOEQ_Lp85diJf2UJgvaPotRqUKX)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
