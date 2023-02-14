---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/-s-x1Doyf29pyAFYaAfPJfxu2gotDCQ30IPxw5a1T6VdDEpQyepKh5x8tKt1WPmw3uau-XkCf0dP6suixyhxP4xP1iaAh0JA05p05H1KtJZdGWB7m7-LDOpsM9FSaqqQquwD-3Gc3P5O5oN7QbnL5w)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/ypCcJHJY8cLwDwIlD6MaCR4cwZckwM6DhXp4Ajm1dXjd3nfbMxCKBwJvLXCYutULZIVNi6n1VU9elwENoZQJnkMW9URNwRCxFcGz0asZ0zd4FE4yNaiKb4k7psNT2UfFaDRpv04wUJMggTm8Zg4K9Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/0tYxurIOkSDo_14NUoRvF6yPda6iIIIeHN8iLv0nxVwjKqBIfFWPvj5wQVhUR5cxj5U3Rvni--rIaskmLnDutjG4V8-Khuf0YhwLcKlHdj6p_BN77SFz4sHQpxFekAqnVcZNVzn2M_WIFOgUaUNZMg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/K8a10TrGaWJVca5ye1lmizwP3-JhNp8_xxuf31Lm3RA1Rj5yDT8TDAilwMAixXiIhVxH8WJwaMffFXlhGJvVS1Enc3cth7OnCgHixJ_-MKkDMjOouEq5HICMnoOt6znHt1g7sbc3ofpfQ6JfD_sJrw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
