---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/X1ebghfHCTpOu7slL0jg_ALN46Z0KtXbSsXTzLR3EXZt8QBvR5Urq6dLH7GK1wN9PbeQ_3VvAMusnZihe95xtIb5DCYJfO_kO7oTjCAsJAOZPPhHaaTGX1ehHIA00gNQ_ignCUF0vz_aKUrRaA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/E_E1JV0dTMxb8amaH0Qvolhk5dFiYd1J96oegZD6XvKk0fi19YkmpmbbTcXd4GX2gfAbTSgjJ7osX5Kgtm6BECxT85pJiUqm6slv2cjEZ_B65Mi5hPw4C-2G0RtK5Sk-q5aCZgMJKxAH84pm8w)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/WRLmDTSxcNZe9Coq7uyYy1wrtWCypeSErmWOIc2A1f-k2tUzpUtkzDd2S6J4HZvJfLXPoLonLaZq7kggG2Bsjv3f8O4ikHs9DWZ-jWrvY9RW_loP5srwzeBHtTouWvIs0eBW3WjXjZPXDXfH0g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/w3C5ILvkKZMMBjDwFtnbCYSbbgNhmtY57aqX6c0XvfmYc8-He7oc1o5bYsBiGLAG84RnS2_48NTYGJc5mgyVkQVYsNL1y96rDum6ORfQ04lhnF4OxcYVj1xLMO-NM28DqLKYRhZ5gIDdY4Yv1g)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
