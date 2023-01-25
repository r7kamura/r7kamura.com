---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/whZ2ZdgXyeKMNJPXA9TlYSVQr1xQYAF82I1SK05yfCOz6_Cnhw769XaQbuy5GNemPObuo5I6ZVkLsrQsima1o2Z8ZohwBlxvd0e6xvHDnjuxesAd3rH_Lchc7qnyKMsLraxXBM7DswKE8riR8gLFdqJiv2KVGQboUBxZ_6CY7lGlbZzssW1-tRsiAnH4)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/AmJTa2j99xUUw-CB-VItbKyzkrJQ5yKGkIrMeMKo7UQYh4fjF1OfhS_XCd5cezelO95R6iOQt_z7sAaAqHsl8jDvsi-eoKHlFTsuFSDxuhIk_3_9a4usVbHtXTDCFVoTTCJpVR0En52UpeWElZPkZSJRiiH1RGp3ibyw0fmp1bbDbwKerrGm63L41r4E)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/QY8gRiFAKvEVUsLdN_t98XrYNwINczw_iZVWGn5dVYAm-f5HC5eox2Up4dK5HYFrF1-l1sOLUy37qWDl5Z9HCmj68PmFZL3wZNW6iTsEfkwEDpzxkbpgNXSR908iV6Qt7-XkroTyJWWGNnJkvsoSjJOirFq2hU84DVT6myVTUdj2CSjhSq0GOTeNhp3Q)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/y904r6lCT2Cfe8zdsuupyNBP9y1Zc7fHiJIXxEi5e1w0eCoo67CRP81C2qw8dc_v7Qv68dtbWCk6qkHoe3O6eVUFfwiZN8CYrpTTYYbV3-mTGpVhsGS5AS_m1NNpTvGuaY46_BwqXKRv5K-xOLQtUJuvy0oarMFYuXDGjaT-VBt2LJGrrMTmoWMFT-98)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
