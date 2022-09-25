---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/AXSo0_2znhg4PFVPthi_uR2sHjaVqGRd1gQi4KqTeIDr0ndG0dKy2moed-Jp71g_qhwWHBMGS8ndFUefiHokcyRMDOrrgxyi64rMMncWejWBPAgLcoQMRdZrGWmsVGtNu65_JIakIaodW_9Kg2kPKJUW9ADwmjFmGWt6DsQxKVQks5Uq6_BvcUiE)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/yUSJXepqss72vvVORVVpbj6PypWyZ5PSa9lWWXti6rov31KCQOjv2lckgpP6BKBkDQeFkFgxl85TfQYYyFeZmm6kqO6X4LxOC_yfIiOKa2UvDPmoKs8ur5OvbEmbkwGpZIe3T-bHaRCDYrNX3GHBKMUN_DUcxxu4USAQtvjNV6zwuAZEe817xX5P)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/isEP2j2u8XBRbhBicptFFeqmNlnyMFLzc23l9ZhIvofksqD_REGCP7Frub5Yf6jusVw9u3tbY0IIClbuVQaMbyUuQ7XXNGTrXvzCR35t_0m6N0mIW-Y4ALiynl2nKGnTSy47KD0Hrhtie1i66vgssT8dlJOAoWCBmCTWR09geGnL7Q_MqltDE01q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/amB9Mam0YJdMfmqIBYrkpah26ULCGva5NVl9OWBv1XqWlb6e0glowOuwIeEtuK1kzhfc1MCTYn3AnFeaWm3vYIXE_Jpmp9H46GPGbOVVDXo7PdZ7e9KZbJ7FGb3c5gB1Ms8S1dSs6EedUQ7Q1CoCT0sKEybbIiVAgXoNXJCE48YGeV6Cqkdy4BNN)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
