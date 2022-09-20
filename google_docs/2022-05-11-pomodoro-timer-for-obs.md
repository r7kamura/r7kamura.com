---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/5CfZrSpA2WcN2PeB8PoU2rfDfxyXGnFqTwgdCWqV-soFhu-BWr_aWtM0lANqxsgUE8LPUaBI_0MmmHAjp3YJluUD1PJE2bdvZTMmCpdPNhmMQAPOBfTsO6rSZtdm7m1aZ_LTUDWANgxYVIJfv7PP-6hBYGBXBes322YmD9fM2x2D5iFbDyov1bbi)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/RKVZHYtklTH8bAHcDiSpQP_SJG81BPbU73CpjV3awgq2DyVn_Se1HaUDvMVy6_1lJSYbrP_KgTYrPdhkeiVKvVj0T1XWgo5FJbqAVZtLvyjhabHUsJbUwEmr1Lh1gVDeDpAR8tI2OWLgcZPlyl7y3Ij755aLlzRZfK0kGPUWIV3H0VmcxdUU2ZL7)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/KDQZ5IFSkxvBvgCt4T2XGZ93v67Nf3J0QCNIc1DofXVzvlg2kCPtOs7wEo7888aCNnarOxcZaQJVo7Pk61YUG16IAsmTQtN021Ow3vFh3YUPoPw8stfxCzeyLtkNoXUwaz5hkRpQAv1Ubu_X0E4U9M7V7bsnOGrILuQohOXHIgkj8_Sba5BpbR5i)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/1d6Oxl6K9veveOpcIvx_9HU1aaoShfpvUCWp5oPdjFIgfxXltCtfEq6rBmm7NOBeHAQ50KLAsSWQNZSeRgolHyd4xAce-3pZEY-KGsl1zZJwMMeAbMj4tAYRYVBv_yl9FVc8RK5K2dNdoKjayS9oN2qzBbkeluxwh1UH-BPj_C5t2clrwkk5rGJ0)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
