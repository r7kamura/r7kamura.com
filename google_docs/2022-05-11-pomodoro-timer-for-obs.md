---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/KIJTQuo1dj0YIpG0Y8yjcX_L_nBTtJn2LQBaebYppAzb2IFBrZ5FRDZJsvzvDpBkFkyYMXz87eAz673qEVItTkWrT_cxCigP8VkBvNOjOwIfw7fJ8GgDkTBnLoteBnb6Xn02gvIntBW2n72Vz8ZrfFk8Z47fPdQKyIhsqvnmQwVimTp1tPVV9SP6)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/TzwWNlf_Z6YhtD8NCbYYBZbdrh69LUjQkoZUDOyqWCPx42mn0K3O92a6fui1ZZAbxRbbp8vS3wG2VB1RlEhRDuQAqHKvSSnQWPLwy1JzZ4ZD-OESfOy3oJ9YWClL8GoSaINgRknJlGwxEt3mTcer5R9uXv2_obKIdUD_F8wBQxMzModUqngVn6Y1)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/nJnlT1KWsUsl7mvtz3YROoYfxxLgmYKswV8MzZpXTFPDAMoJfWJMtnr6AFNwjbskwnZ3TY6PSIddUuWJyN9uGqFmF5pdUmn0aqXY8KFxT0KOzqpaIvd8Kz2VmZrohOhKAFtDL87H3Ngyczt5noQAWphu2R-46Iz7UN3S2BOnxKA_Wjfyhghy_W9x)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/h05n0W-5eYkqvr4X64QzGPgipYyUeS9MURh5Wv43uvB3TUo-P4jFq-GDD52maEl1Au8aNmDMSjd71y0hlklDMw4O4Q6ltwn1LeIOOFsuRYBARTfxjrq7nLFA0vpGadALdHAIDRusx2nKI0GE5uEE-kccfWrXC9ZOjk9ryKPgl_kraefatlV7QhVs)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
