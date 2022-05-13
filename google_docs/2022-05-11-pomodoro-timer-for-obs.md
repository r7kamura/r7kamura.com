---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/T3-Zs5xPIoS0l8kQKaJurnHM17t4YdJ8YuZjrSOttu0LJEkSXqylDkTiXX4JSSzqO1Pj4oCdudi8hagxemgfsaUK4TMk_Y14ria3kkOY-DuouK2l1yr-7xfVN4xOtQDrb-nXsoMDcZdO4DcvZg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/gdbv0c-DybqpN4fcdZ5epfrJn-SkSQo_1wxk4ZfoVr3ian6nbhPK195SfZ3Q3qjQy08Qat-8i6EhdENp-tkH-PQtknuOV02SIIh9wWjqTlkkl-1vNyYR0T3N4wGHEQWI9gZA59JHD2-Tn6AKFQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/d3cidX0TnwHFobspUiQa02I52u7o0pW5nr8C7aaSJfMP3fQJ8Hi_IAwXMC_yGcpwmvHbjBUIFK9fdQle5bS5fk84WrcD6gxaqeusH0USHfrilCn8PPAHtW7bXz7-X9OnhZ_artkoV1k7xv2_6Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/2LgYWHovpvm3X1ihX9PcW5ex7a-inhJB-K-DjqRM549QbBPgqGb1Biy6Bs7ZeUiYUmdez4Z_IzO2Nmp3daHMM3Ifm7V0wFfj0-yioehtgPYPe53OHV8PDpcXT69mgxqRvMnhhD38qPVH_vte_g)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
