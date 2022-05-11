---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/A3G3tS9qWMw2HIFerls_whp-65BUOALQZ_0a6x9fxiLW70UtzELR0DNNTd-BlHQzZocRRS_wxDDdOXaLhnOXegKXGZD8cIuF0h_v8OVVbLJbF8ukbWH7TX7qhhd4tEW7BudmYiJ4lcOLQfWK2Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/5TQv7FHfnJaJYNnL0rodV5Y3XGQvYe0t-hgPcWd6a8I4CkObpv43WcpbFaDwltsJQUKi-6PGtQ6Eqq2CEG8iy-qI0eUw6IRQiLe4s87FgGSYJycJiZvo5O7_eEwrQLB63JZkPwRfOu2waMV2bA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/n8wQud8utMpNwz2xA4Tba_LBJNzFAtjrxzF6RvxU4rrnRfTlb-70S_-vN_K2cs73OU94X2wjzWQ1mSXbl66tl2smi1QfYfBknD-E8FBwoU8yujDZfByovTeKD4z5dl3F9Qmc4iracGESnH88Sg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/5zRHama5e_kkxspEZLDREQ1tvxiZYKZ1xFx27i-Len8lbo0hbDlJVeMWmO2UNs0tlhcX5GOnSTVklxOU4AD12dcOJo1YvjoTRW_oc_WCuBjJivbHuA_SvKxkUP6huvF0UK-Bu-O0LmdQ0Qt_xg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
