---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/1CN5XvYleifn0GRHpcN8MfGzjt8rLLoS793_DaCVgCVjwTq7Xlr2tkgFkQWZgH716qmy8DJjPCEtEhsqALE_T-sXQ2eQj-qpu3s5NWmnO_IU4TCiigZ8ws_PDcI_h0Ry5sBpdJ3nEEiXNGYG1Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/0_s0VyrRpk7lh-c_ECiNwPHnwX0dw-blGeHosVeG2asZPlvqHTZWN_SbZ8l2pk5TgeVJO9wf_C4SqdhwKJCfQRqZ4hBQOF5S2asNIgZLlE5puB3LCNj4-N0wiTTMroZXbVkhRtRLnu9DIhDbUg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/GM0IqXofX5aaYmGQH9jD3k5e_-zU6gWBFC4x7O75aZ7vm6Uefa75M6CrzUUAquoTYDMvfpPDCT-UVIiO99x2mJRYFquyPrAPKy_G-SY2wvqitjXppDEF0fGjaIbzNoCyTZO-XJXOmqXXnXz2Rg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/NJT05TeeiNqIEPFE7oantoI_7T2V8MTWCznBrEtrDgi6AAvYQbIItz5gHY5Y12YBYJ4JgM-8IJCNg-thAWbwTYmKOTUngBLN6GVmo6hQKyvCC4Qeygp_3OpneYlCSo-5QSh2Ml-2oN9Cfqm_rQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
