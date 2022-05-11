---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/J3dHKHEBL-OdZ4ehn6hedHOggOkzwteVd0eyNM3aQ88sjZhgRtk0NCi8FMwHaiMhP10O0mxc2RPHDecDKQrCfxRiDrfvTLyf5tBSOhad0lyFKACieumn5M1ah76u49Z6rdrwvffeszF_lW20vw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/fPxesewMC_eHVhKDKTclrwYItl5NqIQ7CZaz7y4XTtviBfqvk752dvd8NQsSIm70n8Y5P4m-Sacpjy6-wVJC3mtC9F0qg5l3732uqeTsLBi0Xbf5qLkghby-Jnjf_6Nea583OD8F6LnW27mFmw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/ESh4xrI56qM6AKgVqWyNlFSLHgZUFCe4vutHindwwPRDWShXxsZ9br3eK6oAB7msCcX0q2d9m9Lbx9gJbtD8u6A9qTroW5etSc1Ip9D9bcrV7z6aaIKx3F44TmdDbXegLj06Iv2XjS8SCHoX5Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/73-qcK0ICxCmHnPaWN8HdpchMftA94t69YzVz2wz20SHfE5qgt9GPevcKHbweKROSdRlOphWw8IA08sG4N548FH4m6PEtEVXmc5-CA7XDr2XZBKNaAs6b-F2LkFgotXNnplmo8dx1KTR9_X2IA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
