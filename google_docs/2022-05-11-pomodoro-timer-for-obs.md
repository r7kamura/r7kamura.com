---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/u6Y-HpPvvMUhgjId38ELt7-Ao6B9btYmUyoFAXHeBXqiBs5npjIbwH-Zoj3O7Y8OPRg8efB7l5Z7ZghQ43r5dpALAD3VTMvgXhgWgO2IOFoNUv-gKmbGZxkPLfyAsHRbG6cUlFk1fMhVH9YTpQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/kFyDMw9n9GSQcbFm16CmdJ3r-_MU-ppA9XtvTaVdhzqXAnocwjYrN8eiKIUMX8i0wVWrFRkX_gwk0Jq8kZcwU2zmaTdgOaMrZ7dW5CHiNWw09Pc10dVVuw7eqfnlG1On6LewpZI6iSvA_sIB7w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/QW71mjU4M1sqX-q812hu4_R8wEk14iSsAxHCN4r2sywPKULrtNPLxwCmj_-unLT3j3ZanSdPybRl_DhpVPAdUB9FVxqwI1uRnUnWGm47m84G4knTnxq3WnSclmDZLHzdZRuya2kr6iaWUOXZqw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/ChGh7-m9A42Nb6Rq3c7CrKFbILS_6rkRaAyY-CflKHN9B9R5Fa0jiQk9Es4ROSCn3EwOK7JzpJ_IRG78T8IUk3xxsKQ3QTyrYrszeTElXY1DUUTZtKPxkVe22-VQ4AnXuZjR6iODkmAj_KG2TA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
