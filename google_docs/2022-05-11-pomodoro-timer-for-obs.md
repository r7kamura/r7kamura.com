---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/ORx-FoETX897WvAyaIAycobfbEtYETEmByujEzLW2e69O9N4Jlz2H9icsXH90LG1BIMM_X2QXXypBAtM7RmMfxYmwWSpLfUDC8lpvKLgw37_pWgxs0WR3MdQTMCobW3EizUyCXh5bRXeuQdYzA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/Ev9olVT2-KFPZhj8_rC40ysJAZou8bJtvAMedtnwtesAXjaH1OUXys1llL-o_tj_n6BRe7D4PU_usiDfTyWqdNj5uTTwczPkPE-xIKOGKtkMmGjULIjSbkeoUNpw6DmENQFN35Wrpv7vgXuhYg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/w0rVKs3kdiLkF_MATQoIYBp0d1fJvAtmKLr4v6zYw-HEG9A9vhmbZ5x3p2tvPRJToTYPkYvIC8ABY86VU_9eHZaChhG5phkYwOErMSlouRoWU2RaTztu3bEDfLiVDZtqPSH0WPcj0bPWBlZPYA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/7yI6oSVJXUhaCVGfy7yFQAnmIQITgCjIpUIGOntbAC3_M0q7_Yj_uMcdINYfSdMMxHDz4-q_AF4FD7ankVI5hWtdTu7wve6MUaVUTI4pR7Qf3RHf5SVvoDE0CrY8Rd9jCicy4Qb7AmNj65jHWw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
