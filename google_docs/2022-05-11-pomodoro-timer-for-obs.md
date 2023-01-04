---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/UaTEOB3Agn6horU9L5cLUtjTUDgVkm97sl5x9hV1kCM3PBvKDHNdvfdKxLVUx2zeGCYMuuBTGr9Im0cRsJwpJflffCak9oBIY2g-uIhS5UIwmfQ2uieJjpow_xUsy_oMhczn1bH2-qZhDvvKa1ufr6Fo_AQfiAOW10tYgYXq0uTbmjR1nJ1LCPj1yZvE)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/cD-hmWDWJU38Yag2D6IdyYVx2pvwV4Vydp3d7_aiA5yfUyLQPqeg9bkXFZanIxKRaqyKKxHetLYlroWgDpNCjQ_9DQZEf27YI2J5ot_JSV7qu-hPvzuF-Ej3GgrlmEAsPj0sZqfMqY0gcDWUbW1vzZy2f8Z8GRgFR3ri-UOMFd2xxPB16mBX-y_gK2qV)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/jYgagGL76E9M1zTH7qNxGPdV_FZ7wT8GzB9PGrVI_62NF3sx1wvDoUPhp9tK552N5ytIafyW1RnvVhUp_w8AkYW6yZOMa-w8jvX72bs8uWrufTxfdjjeSqzDfDVns2oZhWfzRHwHrbtkEY-acKCWFWvw63UuLXMADWtpIOTR909t0gWHED0YWyPM4fNc)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/BxYBjK-Qw2vTW7nywkD1gfjIeo-YkncU8n42PSap9jkwhQFt5gmzQLjeseys_E0eq7SC_RBMuHh0i3FClfxnUP6OQvgSocrNYZzh8RtKmHwGnL3e-MArg55q-edcfbN341tx0Ff8tZJ3jOdOeYOCIWe-PdXroE7XNHr-Fl1l3vVLjj99GofUvx2aB-fk)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
