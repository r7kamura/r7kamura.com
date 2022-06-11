---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/JntkfE0VujMwK3uFbvB5Oj2lwQx7MN28Esh9h5XNGV1zRKwNznv2sPAGwGuWxaGenBPn5kthIoQn93e7Oq1K9jEnn3-WSMwoWxnuYVqki7dyIOOyMm8WxPQty4A8H0K4tGu6f_coepQQbeNnyA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/neVTmFBArn7PSQ-w_Or0QRb5mAXJrwoOc6npy4mPrpimVQDkWn1G1IQWyGlVtS7RLnG8vxGTPCA67nC6tEbJvp_j9kD3tFrPYUzPVzEMgObp7X4vXDbrvqv8--t59LHiNQpzOyZUmu_BG5Fr_w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/Dsr3a8GJGcjwDodELdNukzKt1MCdPeYnqEvo5UjNdCFdSVKAIE7AG5LRUgt9vlNeDNvIEQ58JO-5X4xNjJb50Y5yCdNtgLb4UoEcYqG5ypaBYbo-O5vYsVE7P8IDddUwCpURFlO8tGWBPhLTdg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/_B5BwshBnxAAwsAWUtgijEiCXdV5L3luh2VYDheMGp-qSnR3CfAvQlJLK8n3oR4jHQyFfzC1n5PgWuU4VHu4iDGh1dNXWii_1ftWVW4q3-NC10GnZFwbcwhg8YdxSMULb1cvZQh_bXtGecnPUg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
