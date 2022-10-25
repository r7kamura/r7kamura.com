---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/8FqyXL6msFv6PyRy4KbT1beIJhp28m1qi7k9lpria-m_wZHm0P7Hb5Kwyna27YVjtlK8zRYj7tecbckueyVBhDmCHIsPu0DbJdMjkOXiI1vLjzToLeCOK-AcvH3GI2qc_kZvb60dkHjc6I5i79fhfnIC3UZ65pO8SwL6gHHHcXPUTb_9THXTtUx9)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/cGAZe-4kLFFXqof2olSP2NjVThQBiOxAL7POjxz-ZMbma95RI88x4nz32h7gnyzG_GyAM96d0MipQBalseCgMk3EjOo84wB_caLVKssIpz_YNrf26Xf3sOr2PtVFPv78A7-VNomlcLvq6sWobP0ny1AfFHv92P5bqygqeygN5ZE0CTm-CPbzCFgR)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/8X10qseIe8X5K-FGPKtKyXQE8cNznfidzFgGvmK9NZJvi7WcnuUSg7ADR3h6GI6edHVQVYjXdvNCSVG5Bk55XNb8KPRqdiMh0-rrEixwtQwzcy1fLTQ8fRy2Y1WD19A1bh9W83Y3Yr_uc73ryntxOI7AariFxd5hx0yp8PaN4oA_os5meOZBDzT_)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/rUtHOgu8ny4NKPNf4vmci8ETMy97gbJHjbTP_GAR5iyX_P58dAn6Dc-TGqJmle1JTLwzDx64cX0nqF19b4FgCrwhR5SB6Mbv2NfBBP33RRZ7rxPADYxV9UnobnIWS-o4DScjYIaRK_dimnbVIPjCuj7QJMD6C9BB1sZnIDibGU5AgCIVzZft0zHc)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
