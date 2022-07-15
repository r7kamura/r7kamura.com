---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/eTX5dDuWTuPV_AwzhgywRqIggMSZ3b_Rose3mK3EjhfVUMwcNE1Lo7p9PxnvwdjQZZVTuDQT5S_FomQG7I0EodjqYnN1BCF36RtO8FzvoFSoJgGhmsokLvYzCt0-BQXHNaxO2JnR-MZNUwrQBw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/klhgNBXisuFBFfz8xjRTi9AZ2CCZDnwYqzVfb3s_XPmBkyOkRF7EtgG09DFsQlL8zRYn4Urq4A9qUBZsJ12sCzRcqHoy0VzbcI8MfgGy7gTqLCO52J65-Un4gdF5eD3P-fqD4R3y5Nyf6nKHrA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/5Onb58Qc5Fg6nHD4Kmo4_JKwrbI7cMnVFcMe6SBnTnWA1s5ZZpf26ebULTkR9VI4WMWA_MTr1K0UvpUQi7Ktc8EGG-p8qlcJbh1WsYeDvbSKHel3hjKZtFlCS0WXH9xfNt7DUCdDGd-AnEOKyQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/t1uuuI-rM2_jbZCjk79Nd-7NntZ2pejmtN-4i4F_rW4JAbjaGMlJuasmLE17QdG53hOLQyge0cMuiPs9HSAKCzbEFUMO12_iBNOAWwAroD76_o9-I4QE6TxbNUdA2rGIbZoWFgGhhYv75dTz2Q)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
