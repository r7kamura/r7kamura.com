---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/stl5RIwLmWfmlXQuWUMLoQxOCVnWv820DqO4nac35PxSkYbGnt_72fvlWymf4xjZdD2HDZNtoHGePgqI1M4Hj5GcxiB2a1_8juZ2f-FZnqO7MijcGcdl540_tTj_HyTpMLNgxVlq9iSYhx7YCA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/XRQ0a6k2Hny7F9qV5H0irE96yV7ker_L8y86RBQd1OCtlihQrNOIoy017jl-8N5HO2gl8CXfDn-jm3qWrirMORFS4gWPfw1EsynvrLM6z7UQ2tORSwAz5o86T-JVVnAofNqk9VTxiPiJNr6Tww)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/h1D2xfm6JueRiRpHVpFxpA1M50jJeEOym4GWdd5JJ48YA7pV7wFY-0CVZBICJ7AdTlr6EgyQ09WL-cZYkBao3OAt38iUC4jzAU_S1iDj07hcbWx6G8uAIbEV0TLf5WgQv7ba7P7Fj4iP8JVhtg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/jGQs58X9-gPe47tmSYRQro6MWucxFZxJzSpwvZC021jlrQQCtYjXX14KXtM9NG3_mpqLl6NjCnl5tT0FUgemlaoUuX6aojceNfgfhBfBEVsDDDSmsQ2KbOvxcheOyQ6_qXCow0T3Nfeo-NPXWw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
