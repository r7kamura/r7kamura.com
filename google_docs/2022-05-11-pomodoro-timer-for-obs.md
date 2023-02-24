---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/TWa5t9a12DidTnCkUjT1q6hH9YxsQWObHtxB2XBT5cJituO7847pX2ya_DlDRa804VR1w7vHPvOuwZORaiYJAU3RatfM3_fginCVPoAwsV21DeuQ-nen1_GpOrR-Pc-X6ctvXHkTDzfv56gJPmsUNA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/6-y8I54-1kikZah-CBmw5LHQdkYJLi2g6HTJJcytwL9trhdCSO6V24twlvUQ9qnNNZe-Gw2d7CPAQbj3VbKTmYH479192oNWm44vc2Zqo1shwcr1iXn-0fQoArV0hlnEdBUAcuSiltCl4VNyF19HMQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/bP6F9-QzE2yoN_iqCIPAIS0uX2uGq0yPW0arYhOa8cRuGujB-ms8_RGh6yIkjJvHOcWqZfbgZ6zxIsJzsoTKDclASRhmYyz7LkQycmkeiTI5MCaNLq44cgp9cbgTgj5EwSFbsUfXLb1wAIerQqwQBQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/QTUE1LecHDdXWGBMTkYUYPQhqaitkVX-BWg7IBwwZ4fvQOGPznr09poqP2FHDpp0ODspK7xMjDe-OqKcM4mOtxMaWhtVPWFa49lwHlRkMfyL6IsiGnn9L9AG9ttKiIoLsbF88itJzgLKxxs9H8mCsw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
