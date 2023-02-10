---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/htECiMUGx7hMOS022sR6DFI3ruTeBKhk8HZxnJK9TtO1Y_Nyvwfao19fENt4XnINmzW3bb_E3IVrPiX7dIqfzg4zXz4zKVVBbYlAtspRO1qgh7s0zUA1gTB46xI8s6Arl339PVgqXqmp3tk9_KRXcg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/iFiJswpKyA7WdMakQQHrqsvUFbPnd1-WIHo5i2zxX7HJomr2ZNn11sNRy6vvcQtKb3HKa9zYg3hp80-xn5WJT0mRZKM5sfpCTOO-H96py_SOB4ZymXj_TOAoHrjVkjEFcx1kwTs1kptKxw7mWJ7akQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/m2Qa3zxuGu_DBoDXYTiYVf74_xQXBhNFViqebkgdbSAfKGV_0YjcfTMdQofJmPlyYmghMOndK7pyKwjh4oW28z6ASP_NWt9sMB_1yGdUUEV7Ohz_S6z8Q3UovTLIPP8k6yUKs_cS8H8_U0r3JwTZsg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/2yHqypwWc1PX1WQRcOWl0a6xnQnFQuV0RdL43cXWBwBXrJomZ9Jb0scBRE4AkbaAKLZyOi7Zp8GZmpK-mSHuSh_vtkPmt8xPMakfZSaJWJdWsuazqWt3ZAMUeiGty5i_o9F2EB6rWBdQXd53HJ7iIQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
