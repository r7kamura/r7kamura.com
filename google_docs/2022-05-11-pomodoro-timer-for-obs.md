---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/g1pi_Ugoj3aoZM5OKaJ9PQOuZ2AtDwcYoxrlR8dGWRRNbCvaNEOKrKPipej_0AGcEMLRjkGeJxeFct4P3_-h4k2RAhJ4pfhbFz3TfrCZ7SdihHoW77BtU_kgQA9rQHUI5gKxNqZzQvN0pcMZzKhRxL5veiTh0V9muABt5cR2yyBhjuaWXmKi9-FX)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/Kq-UV1Wiri45lqgkGaKevUbTu2DPaTL-S_Y5-ThrBaSa35lnp9bzecZZg2iKnRlNvaHVYZt8mKL57DjUWQ9K87ZG2Q5deGq6rMk1_IjTe8Ahm_p2cTIN-HeVQ2blq3hRC5V0_EVtzph4hsoLWSBfQh-Qa0hU4zflv1Sx4yfAUBoVzc_aGlfTAaAd)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/4pDAKJlBGwn_10Ln3py4RfohPSPAXeWExp2EVw6GCZgxl1SFVUV1wwUtlNlh40jDK1FfC347v5JEqMO9i1X1FH0OGxqFvSt8aKmKI2UIj37V40K_Fz4QtbXGRi4ETHHsiMog24A61eC7Noh2HUn1fUxVPciH7hGZtAKoKsrrSu76GJCfV9bgeOZ8)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/uzMHKBCx9xZ0miHphTktFNLBlHl8u4XlVq5dywcDZDy2hnAxwL04Zf5eLeNYCpbeAm9D6lK7vEO_jVEVIKx2qqBcismBcT1ZPo_AdaGysXYup7FO8kgFkF9hIaTUSWbAi1NuH3ZgktvEr8Rf54Ziw_wtcs6PC0e9VgcJtKxA9IqsZn4SprtWFOoz)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
