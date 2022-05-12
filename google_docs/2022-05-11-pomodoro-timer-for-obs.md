---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/1NC4aTM1WHpOuzngcB0Pw5U5nJBesKDW6kWRW6C2zhqniArq6oKb7AJQmwkCzTCJ0DkzGj3vj7f8ddO7I7RdFzYtNng3oMzmc-yKxYC6ftrqpAwz3qBk1xSBqtjxb5t59_e2bLbu-AfXnlsJvQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/ZEquWXTO5ORMCjgYAk7Q00l9I8wdBP1b-aaWOSlk3ClDXB7k9LvZM0TIwGPYj9QP6aQ6Qi29B6WRmROAAvSOH6EEeuNAWwfDXpyUcaVtEt2LJ-5mJxkJ_9gUGW_Og9IwFoLmLhpoI7C9z1xVgA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/C9Ep76hBdlm-9Jg1V4cD0FOyD9sliwBH-tMtXfCFzZbWnTW34E7auuYlImXQdhAsETUn4CYsExdVJOd6MdKF-iOGbDN_9nqPTNg_3PopmuUxDqSWaSyWXgjij10OzC4VIm7i6J5J0obccDW4DQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/9SILMOlthDtwMK50yQWjnvMdsViRtpMaw_z-Zl-gKJt_mjujTgHN2QlKng5_VHpuRwB0jhK6cVI5cJqSI9GsWUNZjILQ_-2egu_TuTd2psa0gySYgs9Rl1cW73gyzti17AkATOoFepMI-2_zwA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
