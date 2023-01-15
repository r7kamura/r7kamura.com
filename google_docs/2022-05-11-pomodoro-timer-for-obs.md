---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/vN3grg1ziv_f4hwdgMt3BQdQ_-ynfxShbe53LMulnA88_E4T4YV9mKgaNEs2s-H350KgKn310nHr04KNL4s2sWtOhn3NvQOwuZJajzzWxxl3pOu2PVoEuRFGaPon9kCtj0ygfPHloHHFwnoV99W9qE9jx0J0BnvxssPUNR91DEEfE-sBShEJg-_1jFx6)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/wZc8uw94BWM0PALvzncuA-tCPo-fgR5a2Sopu32eFFu5CsWWRrJiTvGOBNXOKfeej2AQp5y1IJgoJcgu6uj5Lyo7ZerAVs5h-E-qutklv6I4GvTWGTwyDW-Lc_fYnwzNWk-OHs9AKKbjcJ0VezUJpxyzx1ACGe3UURvsqh5BotheBYZ4GBnMMK57yIbL)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/nw63DzeqXPqVcfXBd3YvmP3whadAdpMBB72G4FG20dsXo-_DLukuTmrdSGNMc_pznwvbirY4qe72EFY5uSsSfM0f7PZcRaJntK1m0fD348BwAETsOqcyTfJ6yEl4jkNgBOnsjkDx8_pl6BDhmosKbOa3l_2vjG1Dc0wOIiOCV_VfD-SNele7U108xTBa)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/HxUzR-kefiE_gvKYP_kHVauAZtF-_v7ajd7dXmDYQI0uD2kSFe7yBJ4NOXe38eUQBWYhBTRDoNUp2TmJ-5dra7RxTnj2RaZOd1fnjxhPadeTBZmEw3Vpu_r3PHeAViHUjYiQcN7hjdsmMHGnyf6RHZrKGA_CD3Jc-A39bbQy1WvceyckM0yncqT_NJ4P)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
