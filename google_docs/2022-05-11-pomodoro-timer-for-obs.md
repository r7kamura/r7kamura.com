---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/EaAkVOPCOjIX4d4WYrtSghVv7sPv7ZHSAMKhC15_1MNS715SYZCa_z-oAxHK7bfmhMfuSZivApatRbBFl5ApuHm_KpBw2HUCw-ZbMWmVhuRaX0_oYaThulmc7hOlBgNx7-dT5XaVfCjaIURvh2PS37eknRauzRnoxeHdOw88WHU-ZGxMiteMnWSYYEXn)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/m7790A1WnxuqdWBHAziSZ-0Zfbt7DLDo2q59ph5SrGo2HLRqgsV56qy2kzqUpi1p6ZcoCQlnI7arTfKCIF4jZmUMmt7ey7jjVLOaAgKjm0H32VQVSwHxJ7BktND-SWxm4hgQZZS3efgVcChMQTPXGO64BlDZltBDuqy86kUyJ1t625cIgElIuiCOeefZ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/om5VV_WmNbJc_MsfMQciu8L-0dydtWIlpftabp7F3dRA8YMvz0M2aGj88aCMUMR9i3yuao1hF6qhcHZdzL8zUlzOSxB9RLEzpjMHHzk9VntES_r_ick40FFFd6YvAT4ruidOy4jscm7JHuYChGEqgMAyKL1Z5vEoq2MyR82Q2SG3OnPOG86e1iPUoSfi)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/IGx0JbfhdNYNxhJyV1Ici_U25bGRWlDABNfL1Qx5iin0M9HYi4kinj3IoW9TT7QpZzEbCcnGYeMM6fpNoe_vo2yv5XMehg3nPIUqWBqkU6MtnGe9K0hJGitRWKkgQwejb39mAUs3VCYrCGL7sqY3lIgVzb0qb1xpcQ14q9KToj9fzK2JwDq4ElPaxntE)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
