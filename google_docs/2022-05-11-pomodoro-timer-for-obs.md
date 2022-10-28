---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/bajiRtYeYMi4j8cqVvnehP2Myw2RumoRU1OAIAacIR99E715JaKuM9dVJihuOWDxG4sDy3yNEE9Rufp5OwolMHis2KTREgCVb32tLgNTYoamcAfzR0PBiKBeqKw0TdCtVEdH8SEwQDMeSUZPBX6K-V64vdkAvzwfiTtOi2nBsy0CvpXekumtV7u5)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/RgB6BvKCnFfd8TIOvGz6qhNs1ndkOpAm1b5cwD1SmB6LHfwVJoyriWZPAGhx--7fdVd-AeHos7zKHlET8kz82TxAeykOsGEXmqw9Bx4aUNHGmkJe9eRHYl-dtqmsxavGhq5xbyBtVU-kpxNQnoC7904PYmE_fsD4otiM4VXiQtfcNteVAIf7WO4Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/oBwGUjSdttlbGS1vIC0n8ay6dRaIWKjbEErBdy8cDobt3IvzrpphmgEJM_E2YCFfj3TLeY5cC8ior2vHMP2GTQ5Bt6hBTnEbYMWijID5CNc-e7URMXMzOtXqzn7W7sAWrrD9cEyCeKQ2No6-mWVk218kB2G6tn7BHdEcv8l1RtI3cRB72fe73bZx)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/pm7VyAlJBIZmn58mZzoriZ3ohg2DLKCPDU3rCzyPOIpAeaF406P-7of1Y_6zswmOeDnVK4D1BU9W1V3B1B0_vt7AXOn4r1PKRIHUPbDYTl8D44UZxYWNc3mA_YDSwTFY_qxncehtW-Dz9sE9OfXKqi9GDRjrT1hQ4xO1oj6Tq7MjYGPhT0rdX_In)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
