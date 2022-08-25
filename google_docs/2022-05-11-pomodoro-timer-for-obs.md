---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/HuXyv-kIZdf3eT3ohyAP9Br9iWry4WaLZtGKTi-4YUhdHORarJzG9OixGn49lknt1L50eq5S3qg2C-ovVaKq9eRMqKa4Kbh7DKAz7UPEm83o-yxOpIAW2y3cmwU3TTLABBhQBzgBVnmpKYcKY-yIzITJdwK4XMcatjUeNmQLRiMSuIyARHd9ZC4v)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/iOoQjGSmx6QxfOZxPyzEq2TSsqGu26ccCXUibVnd2n9B2Paj_ELE2_QYDJ8LulFxBa7nB07qbWUdJiHWc5_JO0jkNVOamKt9ODcJ0AJfNX-VaCcRWcRFF5cJz9q63tTxZ68lnw3peySyiZg-4309XWU0TmxAmRu0H0dCi6xaqu7Uc-6Rdj0NwYWE)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/GNpKxDoMff6uxBPeDe8VioVxeP_Co7z_aWwO8YYLbAhg3U0njX6GPkmOGAZHnEYxtjcmNeZwAfvgmmlxJARCpEUtDvTgcEZDAuMqVe2V1vyDyo_7TUawSViAtMytO8MpqGUVdj46OhK8NtMq4Gte9H3JXtMUUOmTLHaAgLhTNhl592m0RwsBc_DM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/sh2TOzwD5uHMjVNX3rKgTD2nOofzeUgUAJ0mINsmjui4v9-FrZi6KKGVdTp7YZE_70wsLhVSsXkuf1UfqnOeBamCJnx3M6cjOjpbhsqD9I52bzGGFPsQW8Sydz5YDYaVGdj4MnWXSbgme9MwQvnTRJjzdAm8RNN7vhZE2bwFuuwqLPXUETVvfurS)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
