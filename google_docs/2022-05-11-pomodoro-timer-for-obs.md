---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/--9YayTvCZIC5EL-evNOtGFNYjRt1v1PIfHUNaPhLkIf-w1GZvFnCorosJaCKlIUuSfG4WGoUWzo1QvFu6CLrSR9mmZtZi7Gr1E3afAfFUbqXlBc50rMBmsuEYozC11p8rTAqBNc3OcS0JBUoVn4qHZHVqGL5crvp4mPOxoO1vmX7I7WcmP1okgh)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/S6rabdwoQgNNhvBYH0Tx4UjqTFshWeMnJ_zzSkVeThdP_suyxax5u4Zv4Jg5pXpGR0Obt1VHnT1E-UX4dcO1N9uqRUlAqjzzYhWrYPtH839XLNPYQIgcYDmXlxe_tObxr3q39zgnYrVhRIPay3Pcc_1hsBk4xaV3SwdNNnWqZxprm0MTIRKK-4xF)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/nbuV3M3uhZUvc2hT0tKRLkT2QDrbVv5M3EDvwStwjO1Ra9NN3fjVVQQ-d_7Hdr1xVhUICh1VxH9fH_Jj5xOHgq6aFRQOonNvRBwP-PjuvHef-MzAOprbRpsQmf8b347LMS6_5BgyW9MdYSRfdDavWqXrGMyE9RdfWXjgYuk0r0jofke4rz1oRMEH)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/8g1QfKqyuIic68B4r7nF4VzXd2aIClj_QU-NbA8jnYiEPsiMlT8fN28Ci0ikm8aKYD4O3rDVG0ZEwX79zuP6zDARlI9JoxUIVWD2MWpkJuKqd85Kpz3AnIbyPc1_lWOm90Y5ezp3YRy6JC0ofeQ0-vjlCY3YKMYpAJELLwkXp6rA1LnbqJ2d5jNf)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
