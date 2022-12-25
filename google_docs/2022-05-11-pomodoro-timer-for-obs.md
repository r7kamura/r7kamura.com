---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/ZgLX026QnGVQUG0-RNz0iu71Xbrkzpaa12Wj1SLNLxQ3DOdfMsAOqFOkgdZqmof746vd2xu-dfXMP1fyyXdM30owrQlUTSZWVY7XstFEE0gbSh1bZz0uU49huah52N0T_chQQb8lo6FtJjXbsZccSzeDd3wkJ7LlWDe9r-Caeil_VmFtrWyO1ZWGSQ6z)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/DG6PM5rFojXKEeq-2HGqItPJ3m7TKfQMdffTl1sn7j-E3D7JGQtt5_QFXQFGacCXx4rByQnb68kaFPHh7zpY3TPGztjYi81qHL2xQRoaTnKkPhbh0Bi8_61TuBJsVSouLUG_Bqak8WvLM0oBzsmkSsC4S-Spc5cuIvN0xi1NR9AiyQ12r1KbvXJhfOpN)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/-0dSVRFfnzYDgRqXn2H-7R7YfFWzeGIN09ql7x3HZN2S2gFpoJwaengOKbYXWA2ncWNeUnCktM-aRxJBu8_Z6c8p2Djls16Q_D9c-lX342XlcYIc7yg-us2Zp1dj-ldJFa6F-ob84Z0lsdSuoM-FN7FpxzVB0TkTw4BSRXZovOBO43EBz1zC6dNB2Ma6)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/kq8cXiTdOCyZjC1VUpMvK_GvdwetBkV0AyQNbcwA5EECG2TTOMSUu4bpd8pWy1-0FSSdHVX-C0D94hVMU_P-nyAqKrxQi7aMZ5Yh9KkTu-S_HPcbbZQCBQbVz8xbQnE0XuMYTYgwC7gTgwoOxPNQu5PR124gzY5KizXblqCtNFEIpL-59UENXXnRodkc)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
