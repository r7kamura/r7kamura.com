---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/_50NdkIjBwPlkF1DngzbQM_yE6aSwCbo3-sdhxy7YxHfR9-HMELIt1nWsfdLJ0KnuiEGHx7xBALULnSypnHlnWuQZ5F0IwFNopxgT3JSsrFiYcffkVH5ciiGyaWu1A2448jp8de52gIwZ2_2CQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/SDU1kvIHhUVKmpmua1KxaN9t8D5mE6HhdsDtDkcqErn7xb7abt8BhX1yS4zgfJvWlXokUAba6lwOFy0sXjAc4bShVr09nTRSSJXAfKqMT7lRYkSSscfxhKKGYtqRKq7oJV2QStv9tnHzGwOJlQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/FK_R83ISOZ15nO6HpLymOaqlbzGSQI0zR2BVIBS5o2vdACa9xvODCgk31ktWup5h2yNUxjQAo6b3OyzShTKOFrjCE5pVcu6e4sTqxGYIgUF8B02hDib2d9zmIUu5DDqyPDArPAS5TbhpXk03yA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/nWnqrsiPhDO0oY6bGeHOC4U0qfltqTJdjqmYmxXvbWGNXeZJLGZokz5mSHm-XXirqaZzJ5yNX8bH5MNmCO-UI6IMejgLrcUdWzlo6Q4nlSkuNRcS4bNiZmbBtvyiO09y_RvjmV7G9SPuFqc7eA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
