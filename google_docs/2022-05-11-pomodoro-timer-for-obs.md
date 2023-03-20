---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/kBR90sXBc9HczEbz4ZxJdheDIHQCioFzPI7Z6X1gTi__PuvrogHXfFLff3H8VQzZTeopYrYgrZ9s8wQRTHJvIugge0QEfXjI8viROCBE5-xB0ZrzG6s8DVbOxzPXBZEycBpDfsD6k33nQbjLZCN5Yg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/MwzlqJs_OwgbeooS3bZsOT0RExMhrJ-njstgqJFXdhw6z-fxUAUPeQTu0A39MvsMnO_VIsekbtaNLRbSlYoJ-xTh5JZcMDwxoyh8CFRbbrxfJPbw7BxYaKXMcD-fmxZWoHV_eI-eW_s3-yaZNiRC9A)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/4xqDcC1cYcx-vs023m5PqduVXVk90ssMSKoD95P7OCVNE1SUtJ6Pft6HQx0eqANqV08X5xQucemKMCSgJQ6gjIWF4hOvJ2Bj8QrfdXkBSXVuzMRoyUXHhKx2KDYXRruvRIjGaO8A-HRESruAFq7Spg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/W4qlD_msWwRh10v-vOWoO1AGqtJYcnzfzZ45d_UApGGeCA_NYiyP7Zgq0bN5NrRv07Rt_pXdjMPvEMGcM7MJApoLxCUlpmnhAkjaVra4UdXqrQz65C8QwrxxoyhLumGXLLF5B6c75oMxm59y4LkPWA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
