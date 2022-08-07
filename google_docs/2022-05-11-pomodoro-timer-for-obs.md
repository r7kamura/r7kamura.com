---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/f4yS5Ut7bjtDQ6AW0_HpYtxvfAsRz06xy7B479fog7cmsjwUpM316Kgq844R-z4pDmsu-mhqkMCnK-ZgUyVDkB0J1TbAmtZ9sXVyHfXbdzjqjZ_9qpRYyzCjDICDGvm3hwMgPSIir-Dh3B0GCxIqkQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/1cXYaLoIuA9Torm0Uj3yPtoLMNVSLocqLLwnO3zyHW7okrzxVMBXF0oMZqoP7TaNtexu2aRtNYWUD_l59EzrcURV_ajxKiKAIIK1da7L1u6-ZpGbDLx9sN4eEaHIss-Pdfd-QeEsfGidNr3X70Zqgw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/WbPfZi1iVWbvEX8UjTM5KGRzKuYFjhe28A7kezeeYJFGR-52QEJ0kJ-OUYqEtITd_ts32TBdOLSEt-ryB-w0pflMuyO8q3hHzqi1XSb7z4vETQdtjMrtVeahN7QoS_qB1hKVwhx9dDiKMLsA-8Fj8A)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/mrHyD5rnRt7L_R0K0SHO-XI5uv8StDnNE0cz_Rr3f8anuSH013HhqvDSrbHtTC4EpDKk_3QzYODyNwLw5Uq3ByhxPWW1qU-uBN9qdVjTebzsyV9EkJG6FQ5-2bZO2xLcajajRfDNlyyHDS4uuXeEIQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
