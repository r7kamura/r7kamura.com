---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/3r2Fzi9kIdXRYm7DPhiAOCqKUOBMYTedpqppna4EGnfNerv49BpR6_yXh2TT3xqGSx8a23LVe9-LK8P0LU9opqFnpv3r8DvbW3eagcys27ScPFxlVVu8YFp9S8qOeICGyn5ufWr0hz37K0JpEpEpfg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/hMi4nFtiDN-E9etYJtDZwVfF3V-XQySaKjoyBsuqGqsDgqjiaUPJIBPHpH4Z02WsfvbSHcsGR8H1wnR-eZyia4efpTPRAV1lTbv_HaZ0I7zbFb6VNu6F8GpDXFD1QU07x1BHQHODePCGP6Oz86D1XA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/7nfHj-ghkOMBVFEzOQFvJBcGBc55i5gR1XkpqIY_n_Ji6Cr0dFkIbWJ-QCEECZKjcYm5-9eWKAK7IkqvMVJOSMk0OG7RqtxUmVL9esz5IE6zRdamnDwMT3TX-BS9fMQg1meDpU383Amx22VzMO72dQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/EwZDEMWJvNvMDknCMoiQXtvYFFlI4Yl54G6re30rjgdcs2b6XTEt0SiJKQKHiSRaX3D5eRL4o-ZLRiCZZr52JTdaUpO1zm-IX5ZiPugMItZF5cFWpaspFmkxBv6yljntf__oX-phNqB2pXMLv6naWQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
