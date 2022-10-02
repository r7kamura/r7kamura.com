---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/vlweeP1dS9P5ZJkQpmrnMBcYNr-azBNRq1FUhCQckaIskLTJpL9wtHLw_1ARVbrO2JxKzWCD3Or_U21GZdxCt87ZTPs03yBQUv8zHEZcRldlMemVjG5fcwyPe_JwEAx2m96FE7Y99ZSvJNh-zgF21K-1UjJrM21Sg8qsOuPnYjGzJi7Tl-ObsZq_)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/3txzMzlrqCFNlRs5kP2YHMlFIWTS6IzF6iRAxWMxGt8UaYdd-NWFwykzd7Id61BG8BzYhnikeuwKc7fE2-VP958XwhnVxhspEj_WZtXrP6jNA7Tm7qy-eNBAF0byePObBzXLJUOEWgdB0-jBugSnJusmkspUYkMvVTDoGgwYCZWgFJbU6anr7XTy)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/7qTWM1kiXMHwGkd-ljvXTnhCen7ApJwQkts7HjVTtbhSntZTaT1S8F6bzXObWsED5FiWTQKzkmAruNnw7YjiyAVKd8rjjA3aiAudTJ63e7PTCELVtt93uMtRaSEoBNeGqK2ZzNKGIrXg2uxfnCx51TGBV1QSOYVA9AQbZjFynw_c3kL2IQNxOdWt)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/HW8mjRtj2NrHUcAyS0YmFf-x5n5tcv6BMztid9M4BNZ5EE0sEdKPCrDX2rFxJhBBHZx35dgTqKtmB76N3Mzmx3Jt3zrFjHy3SV9lY0zVZ-rZhQdY7Ts3ZPmHJZTOKR-BlETVAKH3HGlBEzvmhNoGJWtkuM28yhm7bh5hskqkEpBk-fpv-BQu14c0)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
