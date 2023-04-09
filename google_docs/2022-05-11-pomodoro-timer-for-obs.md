---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/ukzR-w9ofbhdVUqBmxYMt9ZXgNQxZyNp96J6hr7q6ql073UqseS6jKm_LI3Y11xxWltVlhL1RufsWp8JhKXoONxGCaZOqAdeDnjEwN1BwrN-K8mmhofeiKtEI6LSWuuDb23ZB0PcSmxsvnm93mRbDA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/VhaDWbZRDdH3sZyL8y-OWuwZK3SiBMmis0CVj0-eT2Njvrc98Df0Pb1uaIU9-sIkA4TBO_DfJ60CvE4KQZoN70A43N9pKOqtikVUv2BfrBKGgrJDow4lBwK-XUP0s-ONaj3VxM0tBjGHR129tlKzLg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/BTa77JgJCitK8s8wvkXeH4veIt7RYLCjYuLMtVyeJpKfkXnrX-W5MvvW7o7csheLS7geu8uYaGm4VXR5aLwvFyaENJwbjkV-wcbQ1oT1uSTFpLsd7aIrwk4cJB5YfHZIOzhQ7-KEDNZ76iZSUBgLEQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/h__aKLYv6tCv554qT1sTfrdMjvIktB0UrnyqCT0KTWlNJ9DshVXbNgypkUBHOhqBSZhvSJjwHJy-sUbcuergmwr3q8tzZgsz7F_rx6gSMVCwW3jboI_GYbT9wguBQuUl_xeECBfbPEP8Mx5XYUr-4w)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
