---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/2FkNbspRMHw0DDG78Mk8AF3RXO6P4zDu34rjoFkc5hk9ZXinE142gmWpVeKNnDPm1z-t0BkOlI4cdtJsGEP0mXwsgeAKadoOSJivSemsGlMiZI8Fl3C7C-xUOphNXu7vIRiA3X53fVRsQVXQ3NmU-7Gh2ld3NRT6CFAfvcNR_WcWNfd5uklbXUlsheRf)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/b7GpsEys3D42I5bnBOYtVyIjBxT1UBErzyewDkFsC_ABEMmLiaRGZS74Xx7RUzSYmwiE98WjooHi5APO4OFWftqOXWmnIpm75lkCgqlqW_4dQW2fhGS3vxz2si8SHOBsivpfCPZRdYaFftnevKPC7tmK4gV5v1JaqiQjtgyfQAw2g9qSldRmZQCnKSXe)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/H7II6KR28Z1NjrOEEym-LxkcMS1VdeXC0il5cSY2MkqlfqEtfbGOh_NX3b5VC6tCrDOHCoJxPuz5jAhJjA-1jbU7CObyYjDdRFbLukA0D6JmHa3a55mFsx0loEg8MfQfjw-7hJsPatCgLqmGJPHhf3jOGKXPFZT_YHj4LUx8biviw2YDsQK-Y4lRl63R)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/XrgKhpYyjrsjkxN6k2BAGu0FQ5_-_xIw2OScgEJ8yHJaYPSSO5AlBQqlvL_wyqB8gLFeLLwtQX_dx6gyBTyxvqSxHHHSvUsEegtS4uIEsAxOUAJzrXAhXWPZOsyZT0KjveoJd68gTdyVgkzRv9lRRAfSMiKgpL5xukurtM7WTp-Sm09R1mLEq1QKgKUi)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
