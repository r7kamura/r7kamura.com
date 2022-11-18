---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/IQH4ywdm4KGVxDqu5puIF7PJlR-Iuzrl89uNtKSv5F2FIWUVq9kXd9Wwy6_PQc8JU0PHP9AoAteVxupmtwWUNR1vL3ApfGqIAoYVAR8MEQ6eBIryjvGuPYKYyhbI_IXv_79QdrVsF_hzMOJ9K_CAtQVI4akETCeNNX45aWGjMO78lSSYr6Btk1y5UzgS)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/2VK2ELHQMzYcnKjbQ-zwQYNNtxxYiXRaCn1j0zLo3z3rqcoJXF1D8y01ONHRiGwbQ3922D7-4pOvEgyR6we4vaoqSSrvMc9Q966CQNLASWjISwvVXNmxPKrjUMeEZjUT9YeEq3ortDLGZyBlIX5MHhwfBj1u0KiZO5q2Jj-xzVkcTS--JaI7Wr98IIZx)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/sy3TX6gQ4IhYr7UtDhLh85onpQfQDLARsGCxw8E1hCTwMDlKclwV620CepIleUkNb4rbQdZ7Mg6XH4NM6Dsry57Oohv-Z-BMZLfLuW2Q5XqUnj5PJweKrPnbNmP9-cKed8OCAq8JWoFcUZnl_ova-Kl0VK4sauYXBfs9MQ3qEOgiEZiZ4Cef6Yrxkh6t)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/b1tUl9hQ5cdnnG5hgqlyt1jvxiiUjGk2ERBeBl5SAY66rXeoluQx-cR9NCrkkjUaKQV8bKkiLiDIzZclJOE39d19TNbFSqwekeSKU2ju29dkOge_o5krSZEarODGqTlVterjRDvl8bE-VV-GBkX4g8F9Hu_8ogMY0G4KhV8uRwyojR0symP71l6z7Vfe)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
