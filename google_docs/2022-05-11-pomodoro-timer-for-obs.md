---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/cVd5wUgZpmFVV-FtwHCBZpTZDxfiKauYrnL7nA4ZvT1clI6HbIq81-b8rn8zfzxAlu0Z_nV7vB-MbEpE_0lxwn32DNFq8ZCY_C8Noxcl6i2IMzpYYNuHG-l-099s1u-HzxSQPbltAAWttr7LIMF9mw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/uqqiJ2qx4jBY-M2y5qyKb9uit26GRPNPRu-unYVsBE7HjAA7P6d_-56fffCJPbWGOza9vL5F_1_ubqY6vLnORQ9YjN9EXNYpsDqalLi9jqUs8l4szCd4HeV_YSmVogKTl0X0M2x0u2EiuhwhK9KhcQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/9rlkCyDPu5aq-SP3bG4o9BpEAqqDZ1Bek4oiyHiJQQw4nHPe5KFFd0lzNFJFHifDx9WqWusHcspx6W6SqXM1fNB1O8tbPpdvUHRURInsfdVM5doRNDQRuMFDWxYjDkHdmBig2rzbH3aCPJrkYJLYWg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/yhh8PP9dczDIpB_mFZlvD74jVnPXKgneqFOdZvbikHbRZL7rDfo90vfd2HkOITiYuYvchiYgsz4O384RLkBFNNWFywKWwgjFamsgOZrq9cJt5GF1-RVFn34AVkDtOcd3WVRNiR7lTkAxPOthwdvKfg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
