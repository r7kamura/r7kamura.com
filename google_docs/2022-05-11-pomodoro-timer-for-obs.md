---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/t1DQCuC_WwNXYbHZ1nU3SFcL6TnUPd3AoBPrY3krOkEMggX-gnpGfMrOprKvxJ90WKUDybopby_gEtishkUt7-vxX9rExJsgo4fNvUlB8ORKq8_kDBcc6-WtpIuayW0coLa9wOFI57ByaTVdfCTiTBvXN8g5qrKnFgu7xgVNyEO5FIdjinYEULCsTs0J)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/GquKlVQutL9xvUO2wRDfGYYMiwjlCfjSWMlXchXNryUBi2_T6_5lI9tUH2HUDIX6psTuLEipJJuCAT6q_CCZQ_aAXpANXf2KrjIfJNi5FnEA9vpy4-Zst4g_SP6FiwsOksD12CpuHCiESvq2GLjMSzcWdU6FK3Kd9oHfLS7z22P-JhthuyHbvkzlO_RK)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/sUFDlpXfldiqp9mP0uB7YsaLDHJ5UNDMd0bazf_GELsBiD9i7laUAXqZVw2ptuiudJLpgbX2nKUWAMdZzBd05vklIZ185DRsQzYiG7eTF4VJrfcZD8kEXX4zUicZEsI_7vhqvsLLofabwA5zqcDFqPpVFYtxho4VH9GsNbKIigRn65CtrhOkkDQik7vD)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/ox2-62tRWs10m3aVGAlweHiJfipC13MQanm5CN7NcuuM8HAKgN1QaWVIDars5Esg6Z_r6MjH_as3b9yN7vPiPZDyl-3EfD-n_3esWuUoaBi3va-9EM6-Ay1zENNq1iHlBok6cB_-keSBDQBx9FaM5SAa3CsYJo2dgV3ZBEL4SEt7ixq1aSS6eUQGEhRE)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
