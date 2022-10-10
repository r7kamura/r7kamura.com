---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/fCksvTgz3IXftKu6R4cO9jOHKn-Ah3FnpJKXKxFTlTy-E7A6-HlEKiPZcQZAErnYFYZKZWHGGGAT1qMfECMN1MdPPR-W4_zbHOy2W5fTMpidtwA4MrUhUZcWWM0jjWUHQ-p3ojHPoMXKs8r_XmAOd0OcjsK5ARL8qDxfnywkWHbKH1SLxi6C86cR)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/sF_x_qeBCkZtvimZwocVv_Zf7USVU-b2fHg1gbRgPmbKA7l4y201DcZE7n2FJjhIOYo11OVqsMIBbQq8l5xe4bMeZslGQt_QYftX3oS_dk80UHZMPBzD-LM4mQ3aTshI6mcNsrfZudhC4hEO41MXBrO_SrjO61z2mSeBx0YxCl79Vlp30oqk2uUq)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/SjUUPL7N8rD7_cm-PbDJv0neda_GcCSZqNAvT1RFwfxvk52ybUZbO86wNCEH9ecn5c-DFAzxN65A5TUsbN221NQkRLCYdTgAajikfsj6_ozaLTVkWuUW2NdRIo0md7iFdx8rIkDdZ3ECwCYvhohfR3Mlz4XV04OSWWcqUM1XdD8Bs3QJBfy9m18t)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/AMbGqI5F-DyGBSebtud60H_ZQ8J3qliiAgvy-hPLa2xOau-sY6Bkxm6_OTSb01fEu6CnOiWCra43akqNhYwRuICkKTpJVVNCsYh1Uf55wfjFCfiu8nBL59KHD8rPU78a8y8DFFICCB-5Kjk55tBI6cIk7Gnh15L8lAi-q1gv_lslniaLOBtv8R_g)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
