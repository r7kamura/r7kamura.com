---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/wwFk4cQyaGWbTOkv-n4qy1HigkGktSLkvc5Hv3a8JRdVMBbOhLbSQkcoaGWog2BmpzkIhxOdc53DQF_eFYlpfhYQ_TQ3CpxjfuD-viwSn3PmHuZO9GUeJPfHo4ti9PhlG5VGVKTSDrL8WPijhIOZrA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/Ip1fYkIQhRin7GDsJgvDW0wG0Jf3dUPUxDQa4hY09kIwmcXalwZvBN_W0fG5sZfJmnE4uIAVPQJR214O1tui_YFoWqS_kbQKz8I6JRnIqOe-3edMd1a9FEmXn9QhXTHRPqst2r6Tq7MPFKahxBk7cA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/mBsvzcdrGLSmmd06dFtrDTxXe48zNPVQkiva4YqYiS8sVh5gZDNRdN_dzX1IOGMS1XG4SBUdGMUwtD_24BnEQrR2JfPVV67-pjID8ydDkXLzXmygGZ3nYxVEHcmS_xp8KlhH9FRrxLGDDUXXB8BBbA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/Th4FFLeualCUr7FoDFvGc4tqzj-0T111bOJ0dkNzj23KG-IHkqLbr68Ah3_EckExrGamQJLADM65H2Kdu-8TZTKU-ioI8t5wIiqT6f4rXV4H_Dpm-0z6hWhteKQUpLYT7k-JdGkefQd3-VDoakehEA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
