---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/qnY7CNejT6BcI1d0aaDgwkeepLzWleg-vk4ntJubutcvpTZOqO7zRhtNxFKaRBydmUbV9P35VpMBK7GzqRCVFbJBQ7ASitnHH0c1fNoPtHeRt2XQM0DXjDmTj0vwMrD5fyDI-_Nar2X7ekfwpw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/0uv_1Oi_CXF0kddhd2qDv_CU0GnavBKeSGshJeFK6V4fvhIMoLUnGVQ7kZmDv6Vla2vC27u49xPWXpMHePXTW4Y-70BvzcFlEblqWQZS9PRUQzsuYmB6hI3HxmkJL2BmkqG57PEgsamHgpAHag)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/IRQ4q7Cdbnx2YnqFeSpcoRZHw-Cx4EjhVMV9ZWy1zqgS15xD3yu4wQ40M87WdrgYB9l3E6ex_78V-HP30-lDK2pwCePP1ZJ3pU6TRYVt77zdpVCs-3AI-xg3_tPx5C2WV9cewSIwoyWpp3CzDA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/gO32y3oLaDD6h091Yj6t1IwOjBC0vk2Lc78TRdR3GmmdceMEekeAVsq8SFWLFyZzTuRL37G1I7dKkRzIWRX4UQJIcKvF23cXvhBTxHZevQCBpWmP0IHWM86je5nC51dOkJIYdmRePx4Y7YVJnA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
