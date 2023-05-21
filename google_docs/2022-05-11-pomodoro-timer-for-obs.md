---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/jUVhT-8OzsSFe6Jfjv-gOriLZuPdDi_QI_pzQzGuBP4Qc7AWRPGChp19xj2Nm6J8Cln0zjwnHolXZr6YC13E2ZmS0MKfI0TI3wDmgtrzGI2ymDUp89eycpmEVFp03GHCkYBysGT38UQusYA3PTgFKA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/MHdrCDZcOanr9g5WX_rdyYyhQY5njf0ieq_AINtpfixICskKp9GXDE4s88ydbAuLNX1WMlqLz-I-_zt1WvC_HyTD_7EADrMX6r83vSTGX_xpG5ONjydh7vd88_NtzMaOQkFtUI0D1k4BB0vH7Xvw4Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/kFR93Yp7tO_lAPsU7UhoSmKtFmj-KWg_Rmhl8Wd9DdTqoZXdZBB5_4oXorFnr55KYiPYbqF9jmQZS9B_SZT9ku1HKTL_c5Jud41tvMdSxqL7jr7BpTBrwmeUlr5c8T8LqgjlDegDeRK0bBhdnQinGA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/NvQSi-fnJT2OxCEMTjj13pj_pvpXFSuIjOsEQj8JWRuOwaJpZW6JxCtNQuCZyCWPhC1fW0dtBej12pOzdqDUJF1u6V0yoo9lzHnDUp_mDDsRLn3y3Mtdlo2BZiowcKKt5GdRfkNMT6_P1t4QgU21Yg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
