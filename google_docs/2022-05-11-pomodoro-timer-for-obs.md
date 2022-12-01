---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/JgNI54xWMKKn1SlFBR1K7qfA7HpYAvY_ErkMitU1RG2HRbU-rBKWkHQQDrazAJJwKLCr6rfQ1CqrIo6TN2kt0TB9Knhnr-xxtEkjxwp2T7Wq3hB9OPsCUvp1ztjvP_irGnBhLQzZDRyXT_IYEqqTMVVYS_2jk9dcKM3T6RmTzqzwrqtIDxaV7exu7YwF)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/XFFEPq5zTHnTTaogTJlA09MMC9Bm7VJ_9YVUCpz_wAfcoSw-777vY9L3zV0LzTAzZD1vOuEQUlHtr89h74QsVuqd6Fe6JX6EMwqowfYSMqRbTll4R5p6Kbs-IOoX77qxD3WSjwuLcGFgzyyooIlF2vD4A5nyrLQVNtbOqRLY0aI0PlTd19SGXz1x0Gmn)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/tG_aVTko99ZDWitjdypDityTrbCepO-MZa1oT_qrBwqrbD44RyadMdIpbIZu5Y6d1BrVkclTN4CCqcIMyIx4rhYQ2tRdTI43OsqPJMf223hgn9aK5UvU-e98n-y_MnozeKGzrH1wZrEM1HTcYXs325YPzlkQCd70Ek6vjZXrEL9DB6L1lZsApC6yWsta)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/btd_FjTFdmfuikeQ2SOWF6RZqkUebxI4fgzCDSRWYsmGvvI1WhkJ5egFiph6A9smotr4DsJKVvWXCzFmcFQt3hKY5WdL1en4aRyecrnUiI2uYfd9HTDXjVmBh4Fs7BymzTOU6AnGaigtdIP_kb-LaEPc-XOnnrH7dD-_0bN9kPrgKzPqsiec822j420Y)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
