---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/jMinTvvZ8LavebcxRt9fnlVCIwKGl9J_JBo7J7Ru2Tsyxa93PeieKiJ3jrX7I_Q-U8hJXKYcQlkI9TtVUDb42mdewQV-lPmw4w94v12HKxxRat7h7vQKANp2-AmClUspRLgaaXOUgKANvw4QXEc_KQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/_mTUw_ssrBtJCdJglJtHK-vH40Zcn9Wx-QHT8PEryNXnSSM7eJrBJig9Z5iqiCHC7csbOZdSXuR2796e78WvopfCJevt2cuxts9_lgf-E8M-hWyHuiwILd2rW6rZ3cL6ApWRNbIUxeR0Mi4c5vDZqw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/LEkv07pg35NR6SeAa1N3bBwhkvdirrua-wgY6a45U2LAjqI6tOktrUy6EgBxbdK2nIzZCBJg9mK-6gf9rp2zwofMa5otohRRDpj6RwqQNCNHXSiMt_a1nUWlZ43L08F3YbyGnm6TIrMmYM8dwc6e1Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/aoYNKDd3aQLVFbxxwi6uoEsArzPyB6-MvZj7d8g9r9W-bcsGsY1cpKujeAw5Id8El5epczOuszwotE6e5J5Qfc2ubSOHih_p2HaFg-rAgbjw46A7vLjkQ8GHJSe82oiKqQsk4WH-eICRl-Mo2FnmIw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
