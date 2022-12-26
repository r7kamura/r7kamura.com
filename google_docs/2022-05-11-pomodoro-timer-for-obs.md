---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/PLeIV192PHTYWEkk1KhsERNWDvpBw3gc15MrpnaZ98wIsPs8fi1vx1EUFKWjlg4JpqK2HMZ83wm7B5VsafqBG0nBw93cyWfAO4PM7ERTmGZVBt4G_L0WqluYgX0jhHs1g2PZYt3WZGzeXFQhXp_Qnh-3smJ5I7yGE7O7hnyoUAcf_4Es9zsUVDwfndBB)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/SOT75rJSlwz0CUW7vGJ8HBqHo1W8isFfFbkJKWz0dn3NWd4k2f0L9We8CqyhKoSzUci9nlOd0HvVIe9CUZeJb9OtxxyxOqh6L53PuPcLXHF6bVL7qMsloJxzZppsvFeRz-dBETptFw-Serscmvupk2PQfMpy0JYDdPEEhG1k9G296d54ToG3cjRiwGDA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/jadx_D98yy0ceRfSVPzfYc96ztCHAhE3dB-XKuoGGhLLQjx7k839YuTv8-AxbNX57-htFTKQZ_owirAESInmYClCcQXX7-gLIXFiidL8rJtAliznZktZlmRj1kpw4f4hJC9GHvkavUz6nOCMlJQmLE3gEoW2ZblzEN7VHZD33gdxgczkMoWv0XCPvBde)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/Ub_E4nyQDQXpUG1h3_NIlnIhQP6UxNRVxuotqrkJKXAvcto3wXrm1JCRzV_k85FWkuTAc837BjDrNA3PQax4Jff3qlD6UwmUhnZjefM6JF8MmSbpSenKSSmlLbYxaxg4AR8YV7ZNTvunS98ye2qzwRs4QwGBVfr_U_uAOHfAP2qtsjvGR-DKHS-hF2RC)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
