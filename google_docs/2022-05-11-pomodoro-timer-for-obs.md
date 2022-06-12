---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/7xy28v1orrCqCZe1QMHELBuXJnchQCjITLavpdnsjaC2cBm3m-Iup9z-YDfKAAxWabe0RPsT2wM83jj3A5vtFJqj94RswLJDfLzRxx-QJ9JlrKQo9V5on7EY6dmzx6fH37xNGrUqI4ERYpmwKA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/dLqHTRjF4WqJTT4JDGnUBAV5MUdrIppdYsj281xxcqHfU32PhVMqeEZX1ZTsKL55cfG3630KZ17kx7kDswXI2UGJgg3pp4e8UxwRQlR0c2rS_RQSYTIvMN7vFgRODkbZZfYjX4OkignprFRS-w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/xwL1OhwqY0sAAwPy4XIZKTWJh52WmWt3Kup3_IXGhVZNxrlOKwVkWHCQGcn-c8flZ4oj2ls5ZtsaztLXLlBcQR4Rto8bqbJe9cQJb7pG8jPA_zmCs7SwGsnWc9mhxRg7aoE4v8R5a-9sRUN9zg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/i1psESvR_rMyrUbk2ayjK0e-BApGRbjDo9C-QqLpwaExjSNd5_N7BZewacqH_rlF79R06KduYydWqhVUc9bVJzTFhrcNugd51xRRJFuoqoIu5Xu8lhWy8ZAymfrAt9ZDM_xqAULKT37FLLF_uw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
