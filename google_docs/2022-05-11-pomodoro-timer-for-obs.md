---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/HAo2sAykLuYrM8a9fjetTU1wLPhtgD3SAcXoAweBCOIXVy2d1RjHaX5HQiEfB5vQA6UQ3sQhfcUs7sa0YiXyLUMc9oy_wFJcLisUzjf_qH35MS19cUlcH02V0MxkHpJhwgGJ1MTGnqAroA1Thw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/MX7xqJ0nmGeSnNlUPwvaslg2u1W3BtJ4ge8VS34jrDQBOZ4Q1CuoJEshI3QdunxZixlMeXtaDbq0e5rADgs2MbDXSGoZd8QRtA6o40NaZQ_VN0yIFjXlASayhiz48vP0inWkq4d9hzYcma-Fyg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/p-sDFW01BcAJb32rB1pOJ8D3MHG3BLyj5-Di1ueyb9uwIn0YOJjbfjVrQoW69jZPal0TTTr98gxqAQSh5G-JEKoQtWIFZk9FT2yDqfmGXjCcGB1FTqLP7Jx5KFwv6u7ZzQ229ehjn_--KHD2vw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/oOVByruarEMLIRqo-YgZmOW_A0ORXAsCl5W8ThWUwwfH-z1XJgVLbDbYN_fjpLoVoIhBEHkMxPmv5HSleZ5q6Q7SBGbFwZ_KSGP1ZBohIBvGE5riLce-pn-wMKUU1OOEjAFcsk279aAdyTOs8w)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
