---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/v6lF6upF8QT9h0LXqI6LuTiR5raFGtgfs--rQ_amHoed2Jo-WRa-CPXN_4KV0DnSronhxYiOOzCv6FRal-kCE82LcWRGVeIm07m7PYHDki33opyQ7vvnoXJYjoHq4TfHBhQituTGxG-zNTot2VKzdukvYbBoTCj-5SQw18te4uOx410gvIY3_GfKcP7d)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/HtB3xDkC7CLBCHv-kSDN_bBxoT4ZGZF-j_l50U0-VP7b448xdBOKZ-P76hPMYz07ubKsYK1_IV4ruBiHLtASJHYC8AC3pXQFnKyHTE59YzvLBXzZX-kDuLymJVFXF303HIH-qtXQNbK32KTnsHlgpYLhfBzttt9Js1XrciitNtdneVMOwGB8zwqBwfmL)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/WnmkiZfO_W3g93csEZ2t9g9U8xfPLgGyKrj4OQlNAQZNleFd6QYChWeaT6mSqclT0z-mgNeB7WpD4c8wgzsXDecoTk_g3qJB0bckdsa8sro1Xkv6LLU7Uy7Ace7kSE9VV1ASkyWAJJar6nuPxYRo-_PFBQHml4W4lOnQXYQESbRyOYj3pT4JmlkNAHDT)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/7Ok1npSRPIs-mBQlNqWWBPRzpKS6ywerv29cMbzfEizrv8X8SrCYgtvtKhuqnjNy-sGpWqj_Qjl_l9xMBNqAH_6_ui7hEGcN08wWRTmBlHwmiuxnSDJzKmWZmLSntut7RD3CAcYXqjNg2pRacY4s7BqH8rB7I0woUU-ndvOkWs9ZBDOUC-uQTHjXpA1Y)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
