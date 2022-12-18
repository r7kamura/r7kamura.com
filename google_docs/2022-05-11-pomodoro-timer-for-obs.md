---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/F1Yu6eskzgklvXtP7gV9rqvJZ0O7enSHAtzXm2KpEUtkEbjsxcE4QgxtUYH1MxHkm493rJRmdY7d5-mh_mei9VdF9MKYC2qLbewbYt-x2Eu9kHRdAj24LHlF30cI2oxbOqk2VEb4WXij8H8k-JB8HGIPmThORP9e5QxPyJVi86lq6pNUywb3KB7_Uv8Q)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/-W9tGr5JkED6KRoOnYPg6cuKWFSuiDnvkSNs6cTsnjcYffpP4vh_fu_vRwibo8j5gS5Ndefz4JqIG5c850kFGGKRCbj2gleZ4URJjhQY2H4LSvUeay6YVa14sh28Li-lci8Z7rH-fZSo1K3TeKPND7X7d_nFWYVBi_wyTFguK88rJhWEuWBG5KP9GtjO)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/X7UHXb046LrOgvj3SU9XZli7YNUPS3tLcicmMjG_0kCCydITU5WZUfZcwqlLpbxKKthVLi9tCoT33cYkM93rjsi5M76XX8rVJ8N_CkAEZXxSguZiMlet1B3W9lD3v8fNQtHnbkpAF1DcmQT1zqhFNyabC42-_9oRIc8YFaxZ38OrHd3QWhNCnfGY4phU)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/XRvxKsSO7tjmEOEgaz73bcfDnJWQgxoSRLLvYnssl-Sih5PukUsvdzSk41B4QH_UlxyQgPNwXVkoEwS7M8vvG7an8FfoCZ2r9kjnqMpT6rqw7Zg-7cfXGf3_bqXo6bQwTT6SDNxqwrQVbzF1LCQlFFlxD3z4NQ6LYO_mfwnEujjNPW1v8KLm068soKPY)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
