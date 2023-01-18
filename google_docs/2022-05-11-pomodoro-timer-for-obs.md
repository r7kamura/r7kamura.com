---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/xIePvLMv4G7R52bORiQiWOvXtMRmbEpPx6I0LZ2cJdyISOuQNweyG779UQJN_lbSu1MFKFGo6Ihuq8IE3-pnQNJ_6REVfHfJ7rfK0TqOTN9qUMY3kzJ-VurJfI-YtxS9cx-_z4mvR8u-L-7PcYv-0zTN-XGuE_dwfl74cbe6GeiYBsNGKKfrENZU6w5D)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/yHaatyjvlaPeZLtNkMuKS5HK_iaiwrrcYdHsMNPQXa7kN02Ek-nvoCUUy49aKhaC_lJdAx-XxG9SSexbdI5eZIfeoZZYo-S6xkT-MsNLDMRFOebvSsDWT0nrTQV02uZjQ42lfND6h5MZ22gyQ_c2xSHQh74miASzK6jtTY1Z3QD5zf6-9dPjFHPKk6r_)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/cOkq3nzNc9VKP1wLu06jLHIUbs4nqQ04BfeyFWQptQyExY-8h6NbmrxqzcHxcr7qVsCGkbh65SbM8LvS4dqg8X3xfB5VOLjPChJH9fOcwF0ny4Qz5PTXqAyeo-mdk9Ko-ZuIxv8qPpfN95NsSwucxPlp6uY2pY_FPPgQh8YJIkvSvkOzwjVZ4WeY5Q7h)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/va3prcofjD6_oTP-Ga8yYBp_rk_KeveIVUj-R1ULScobJi4L74FBzXtlI5ZBUEh81sfo7efYYFRVEGRCSXdkPSnORQ6CiRG61KumfDLTMuqvAXJW620aQG5mZwWCe7-k37uq6aqaN0HzEpgJhzbOPllnK2dllUlW566EKhtJQeWcHD78YoltrYpf46f0)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
