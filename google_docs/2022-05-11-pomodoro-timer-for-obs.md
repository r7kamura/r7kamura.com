---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/kN8Jw0pz07G84ZOTACC1eHTMLDZ5HZLgToPqW6TPtcMAysZbb-2r9l64biCZ1sa5oLyXJiS0yQnsaPZX0fOTQlEjWj3z4pMlP5Nlsuhgs4q2CX_AP7A281dvrF9F8THeYEOayVo-AyL_ffI4b_hxyw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/WMs35P-fBlOP9_pIxiFZWA58lHYak6kAuzBt2EIkL6FQv4qkHWze46_zgI4Ki5klvf0IFe57XUQjMz_Y0RbvRu64edwiarNyfyqq9XtCf7XwGDkWWZzrJqQv6Yc8pp5FEiHK9yQkxJnkA32erfgvRg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/PKb2Ge02MvSrTrDsStmJluvjLxpDcVGdcsTbn1WyOhntc37l4H_80JoKieASe8HV32B8B310tccWsG72hm0Zeq_O4n25vTDmc46TrOK0fviF9lwOjIYa4BAvRa6B-riWp3IfNWD2ecixfpAQTkgElQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/o92tru09bKbgDnwvp_a0MT4N-8p-l8MRIluptNbs6HPyNYt-MOdowI49QUg9e13F0Sosptd0rrFzaLCnobJ6VaqKhTS3qQ6BtrIEPBa3dFFiMG4khKKbMrov5C05obaLfQxGlAUkWiI5hato75-3sw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
