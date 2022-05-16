---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/xGrMR-wnwsvVdPPQViKdYLPMjkrbBLOQm2m2Jax3GQ7IsU81klccaHgeGD8M0T0zVd5Dahr1bFKI2skTpXRKV6DIm5tShJ6-Dtfuz8EHvLDvBf2gXuCeYsP_Bpks4tFuBlvToYOaG7UY3QaNjQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/TBWrREpfsddLRG3-aXpSwcHrS0LzUnH_q7Hgv4qJsCOUq6XUl9khm70cRq6v7Y51vI8fSQU_lABTHtUgUR3PEG3QxYUaW-Drv7uP3EzH87yh6NivuRc2dVnsV_TRnDzR1ZriSceQAypcC5SmdQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/SxM1HlDtU93nqCddsBGMu4u-PKER4pC7cQvZoTIst_K_zok85dP5o7NFcTkohJZ8V8r6G1-dC7oipctsBqYAL6-SygTWfGzOCxNr2ckNcKL-m9Q0oNMEZ5SsHrwMeytZWqzQUaipG4VpGft7xQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/61Llb_WCw9KC4r0jYKp4C6Fzew2tUaPKdFRJqexiSYTGvgLpH6AmEtXPi1kuJzuAqy6eNWlcySQl3i-aTzT-NbD4hd2UwFX5XrR_YvP4ZW2U4OuXbWjX6vH7h0tpuZCn46fQehZD7WrNXOTeBg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
