---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/29k2nDSoWDKCspqnIUu4cnXMN7Rrs6rfWMZlypbpyB6-cPV4yySwYMkdDsQnDDhvf7D_Sa9d--S1Ai3bK0fF1MkiqBG0l4QKzokH7uw8vCY1XaltqHYX-ZGVmt6wiDFJDKHcwIINRnv1EXv2pw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/Nuhgx4kBzegZ8m0u-6cUTVltBUtY-ngzQeevB-21fP87KcGRKpk5TC-lf3FMZUWd6YTQRJgqvB2_OUn2Ck2odgBemn8WNV_7CiuL6xG5vuAnoLI9zICd9N4ko2_QEePxLottiEeQeXBnOgxhxw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/dyTd_b9AFVZvgqc4BxxfjQCVsA9SdVUkAxDBZxlcjyOA7_p9KDRwsZGhnecOL8C1U93wLknOMTJatmEP0j8J9KZ1i8Ztd6xiJvMTMgqwiytEEmtKKM7JOjj_7SVfibuHLoKA5HYM3fn2FP2qdQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/LZepnX8KmOoyup9FXX_irDhqEFnRIXhKyIiDeNasMdNZHgFa6dIjQdYg3O3Qn9ogLsM4_lQ2hoh2jqaKl1FPUJ5HcRD3E36mZdH651r8Sos_U6WIAFS15p2hu_KSNLKkLjS9RdsVSbdn89738Q)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
