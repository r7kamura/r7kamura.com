---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/LGys8AIk6td9o0sccTLubbYO0VqOel3yQZKlnZarWUIoPHMi724SDykWOLB6TILCzEjCQPmeymaZsOyBvW7XfACL0_v74iLkbeL_R_6aT2YEyayufo8uWecOS6czI6tFkPRXiNGU-TPkpiamMA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/wkgO2zeA7Jlre199S7R69ROMnTdDOG8QZFMILZzV-8fzIOKbyukrO96_VuLUAAyEJl2HrTFGiD3slQnbBMQSR5sX3y_YNkXREe2KSvKdIoUfm0sIPKY60nuTJXiGMGqMMj6mHI2MV_WYUfBnhQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/ZJixpzbnx-sXug0tQDlTfBwbvfw7_pH12hFHJ2fZK4ItxLrCMMHUfU_qb1TgrM7XwWf2dQj5wqotzbjf8Aeop44btq2eGFYW4m3DGKF5kx0dcOMakL77ZEKi_rvwmgkjuj4usICOk1VGNlVCjw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/2qnPhp5l6R7vU5ysg8gWagW88OyauoDuuHVacOmiaQXt_ha1ifwl3IIBYCtqIehNfNy2GnFaUvGd_FVu-a2uHX0onAT0MnI53HdQ_6GLJmH1oE6s6ZktMlp-P7iWrluiJ6_QvZ8SECSgYMN-sg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
