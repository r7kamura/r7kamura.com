---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/hLueevnTb6qBhAEHFu5FcaZoKY7GTZRhems3vZlunxfsQyV1mWWLtvm80xu4B5FxezRL1cl6Ns0pd5-_55lkkWvkUYTEk-JunKqvIQB95Z34G7sgt1fnRGrtWSZHHJlVJZHAkGX75_zt3KYwivaRATvbKWDZVa3hxM1Mo1QC2XJq2veD8e-96qiF)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/8bi-lVsd2qth9t74pK82OqSWPZKCgX3DDni6VTx44GnvsRH6cF93rZsc5zegGYT_wwCF5IoukxrZKJBOyMa2qn3PI4OR6EmNG23gzL8eyDYPjZ_LARuimnP6TY_cV6xJf2LeMm9Qt0AXvGs4NczOKzsqgNATyhB8rp1Qi6vaxkYf1cTGdhl6O_wC)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/2t1vVYHhNIi4BPZgZBzt9cb48g0ms_AtA5jvnAzlPAo0-n19iAR66GEhNoW8d14DfNR5dXSd2yxGznuLP3aEBZIeC29PoV4QsRDDJQolBr3ooC2iytAE7wNL7X4L4ciXgfY-lSNsBqR0BtGo69dRL7p9z4242wWpJapERWEIxZJmOFkHh5fcz3wn)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/blini3lBNBJv46u_DhRgup0VCQuS8PknYlXl2kgG7ngaR-4xM_TZCie3vvn39KQQe13QzI16lcYAruR_aC2y3_GcSThFvBvagE-u9zKhPFNOGdnYiBmbVTVuAIp1DOVqI5AMBje1xg3OAZKDTOPTwG0RQ5U7_rcokFXKU5ZP3yTzYIsR_4aRiOCi)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
