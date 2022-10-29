---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/uhI_d52932of3RSJqTaHFYwGuF7UC4odsUpyTC6g0JR2mKMMQbp4zBFSMmcpCScFomlycXNq73GRAnNyDpbZd0u22GaeClWCv-U7Qm_Zh-_ivt8dX4TBBn_3yVmfv7CNPQQUIKjrpLZdL-dwWQK2ZD0u30Dt1tWAmQrKYH-6BwU-Eq9BMZnorSpZ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/SZX2BoN_1K-E4Ai_8PlWUkocUihqiAVBzv-9b-hT3vAyeYIGu8ZH5oMKSjKOn-qu3PYN9aV7cslEZ45oMIOD7ngJ_k1J0at-vtMDmg3oezcvKhoqxVDJqunFPasxrMP9HVDEAgqCVioXlfBjXA2PiFDqJE7O7Tuh0MBQw09VOLgTUR7U5TLEfDd8)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/D2u3PkzfJH0lkKCltzuKdMKFUQU8pLpfFFmQnz64nJ2vNDjK-YxbiZz_ubZisOaHQcZDNxMGvIXI82aNoiIVQz3iodfQC3GGnwUBVfjGgGB-XGbPvCK6EyuTR1EjysfMlLqF2Pl6a5HB2u8hgPtw5Q5-3g00nSKysbaSy4_QTMHzpGTgk34_SxDe)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/dek_Kg4ejNPy2SM9NUtC8DPitv1lypJfYznw7b-1WqrEzblTAmUSEBvJX6gDl5FT9clmijjShk0Vv4SShdvP_RnDr_mGnW581PG4loy-QnyRsNNF1rlaIatO9ICbcbm7gvm-Feef29Y3XRWBZsGOcN-pamsLM0d23nYGCYs8x5RISeeSPl_viwgn)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
