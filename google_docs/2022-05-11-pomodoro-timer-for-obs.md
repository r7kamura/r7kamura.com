---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/N_Le7XGSfLTtZbvRseLIxd15ftK0aFQL2vYsNlMIMPC1rECaWCDc_VOXHqOND6Y3UvbfEi6ZB45bRGQ91BJAoMzrG8Z8DgmV6xIl8Z3r3mIowGMuv1GMjGPm7l5xTjVPZegBCgnAdooEap55eA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/rXZJfuOExknsg5pWxdm1iBIj9JHOE0Sdop-1xrROGBlU-sRKMZd-gFEYIitQPKFqBvkT8HoPDlPa1A-dhK2i_CfbSIFND7R3rcXXnUwIOmzBAN-RIOqQOjLRNvq-4OE223pKnNuoKYpCo0qUQg)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/2MZedlkAoCrc7ZMsP2l_uZRLB2-UZqKbEtKIFdpKKSeszf87u-VyrJNgrHeqNc8qvBNIeTx-fyK22O0j67h6Kl330JMLgx-VEEAnLF-hi03T6v_mgllC56NC67eMozEp8PdWrPR3eY5TVgee7g)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/B8peBmztNmTxkGAANOiWjiB9IapArkL7p96vFvARCkPDIY8EStOJ7jP_lwbVsDp8QYK-eelbw9Si9PvOerMB-6NCgN71eydDxXKh6_iBFLMSzGcx0RrdjDGsyYIu5Aw0kU6x853tVbS4ii2DCQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
