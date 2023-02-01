---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/GEwFOn49Utbpx3wUIcFCeny38d0Jgagzgeop8BMe6NC2QTU6nQM0LTx-IwObfjn5S4GG_hMNpSI-hRzAHhW7heKdI4pc62TvLVDCRnBXr6lhq4sBlOu8wPT0LSivcuxn8lKiOtLrQkdXFTXm0lY9hA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/qstPrgQPL3wRPie4NrWWYr0yipNZMxsMhi2OoY7-hV8W3FNrJStI7FDToUdKGnrfxJYlrEJw7jnTqX7YyzwDy4zugWQXmu3gZ96QiWe7JaQgiAxVlOfiQ-_VxZ_D6ERLZqa-J0f8YLcuSu83V3lT7w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/M9u6iiy_7L61cE4AAmDTEYrXQgl6kJgn31eh821-2KwtlmKmH7lxcD6Ar8r4z47NLO0zP_tErtnDiKxv1U1TYZB3b_AgLW8IbSxOaOZm0rvtnf5Xcz0YiioweApas68a_Cg4i8-Ae9HwI9EjIVDsPw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/P49t62k6C2kcQ2cU63e9Bwm9Ll46Fs79oH_Diz1FgpsyCMc5ntx9MoLqFbPK7-t2HEmdxRXWDXGF7_VIgvsamPoPRFz6OY2Z1OeC27hPKCvPlwlRGH1oFRyXAo4W_hHOZY8JC09ddFimdI7azxuwig)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
