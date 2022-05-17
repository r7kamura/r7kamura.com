---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/rfZzRKdj8NGO1hq9w1VwcQJLE6Soa8HQb1rWNJ2znEc-PwYVnLlt1le4oR3gGRFg9rUFJ4Ge80ui5u607ojE_s-8O6d0vZ_YjkdxNj71CAGFUqXgLsEBlpJ7dH1RNvP_po_liBGlOTVC-RnvhA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/F8uZVcDWiSWOkFd_BDrgH0gzpUcm6owFXWfljtBYM3DXUQoCEEfq6KGOO9jlGIuMjdfi0FiOlH9PH1BPZRVoejK_yZNpOtyOXLvmcjD8Wj0qQHMDlwD_3mRwobuobJsYhlC5IQQmtfJcOmAlRg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/6Vk6C-umLg6GHb1B431-0Au3CdrkLaHCK7TzctJ-uW4lJ6UBy2qBYtyIaobQTDKigX-ctoDS-x4bxxsTItG0AUyWJSYzue1zF4j9IqHH39UEEDsNkBzVYxNh42_Y-g38IVPkun8RE-7vJdEa-Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/Hn1cLwPVycOFic5HvWpiVWcMDbTr6rvtJwdE61wPnlHda0p9yK3tRyGyotgezoXMLnfEGd9Z5841DYYd9zYBWJ6J1mekE9670bQ3IycjX6rpoAeYSOxZwiF0h9RWh9hvNag5ejM_APAf6spJ2g)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
