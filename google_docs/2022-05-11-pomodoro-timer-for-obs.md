---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/_LXJ8iApCf0_QtZjBgyfTz3MDYAKZShR33ZF8FWGQKZoaNVS1Z-O03IWOh1rDPg5ZXytingOvSuQ4qUtHj-QPo6Vvk7ex3X2KMKoX30d7vLn8XdnrCx8uVnAQT9eRir_bAULfSQvkgg68PC04XVxUA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/hG_-OIP3cLnYxnb_u4IikmyaE3YbAs-A7700FlDJ918ilO0uRWjZKTZY3OrHubCCxCFwAJbm-xooPqcHUyiorcVhmeDkdUT285Y6nGIiDT5u7FhaGom0HQzB45d2z09nyHNmeCS9aHiw0F0cDh827Q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/n0J3xgNGsAYYpYBLalRjxeO1b-Oezw33rfKRteFY3ukOgTdmXEIGc7AHvWpVgf4rk8-4EtHogAQJLh8b4PBNQr5sFQPwx_FBp5ElvDxDuML3ArseHytAaM8IywjQ0r3mwzmRZ9FRbPlIp_YnxDCnxw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/jdLiZngS1rYyO_yywiD5SNFYvc-V0Fn-qhV6ixBVKQW4sLScSNRbjhYL_W5LLhwRhe5PDczGbJU8s0-0iZYx6FxmmRPtOvAn4iRn9oFgIYiqTHAQMBJ_JahXCJDKcrgfT8p2SmL_82AzCBYnkPj6aQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
