---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/LYgPztQ8qlIIQSylZsgF6cUjbfdph74453aYaWydP4FHh6gmjqzQ3BRRYJt879-GCfxx6C8Ud2ixJj2t88TI6MWbrMoPDtXBxHnbSNr6a-Wx1U6Y4Se0CUQoocw-Wy1fMZE8BPIl1hIwdB2T1HCt0PQa36-Rp9dUBX_KUkjgYybONTQc8c132J5U)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/KbJzCl6V_-CAm-cDkMhNAmgbBdLeMQi-m3dgC65bfFQ4JAi9hwXXUN46SSpbc6wR7CPOloBqa-DuB_WOZZVjkyx7nCyrWuxSViEFhtMuE-oO8dTaV476PIiuSvguH2zRQf8GQzu721eANNWY_PVHPE9RpjPIEbf5icGSldY34E1G6awhKaZQhoj9)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/qY7WjM3l-14dXcINsdJi_xH2RLttAdx8aQjH0Vve-ffdO1FaOWFXtrMfJ1a35u5zFnHzgM1SIzcvekA8IQ_qIu6QpCCrj8yRCUYBHASHcoIivNm6jMyo3GIRThbQKRi5FQ6KgTyE0dg7xmsxaUUO1rw5MwaZyK-pL6wMrEn87D0hU3o8asP-IlsW)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/tq1nOhgl7lvmuNbnOcoZ66w_myBvPoMj3sgm3RmgychxJoXK6VUqwa9PLMANayxvI9AV8O3VXf7my19EDL2u55fdmdLeWaaLX0yRgw34ryERzJzxiaYDkqqxnLm4iQ9hBUYGdm_8KsseoxipZmN8JI6Y6gkRQmv7BeKjQI6zgBxj38u4hXv8c61h)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
