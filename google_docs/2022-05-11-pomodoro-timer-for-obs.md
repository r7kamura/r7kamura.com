---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/D3OhB2ANUzrrEQs_1IBPsSZnmOUbrTAkRcfq3MMxiMEKemaUEjnHPyjQ8xu4e6KOKJhuWhnJcsKWyUkDX7EsIkUmZZrm7YlRDW9Bau8T0C3Di52WxMCRji0Ml30iSO33n_QLDDZQ9niBHNeNWQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/4Y-Dq2lnQS5ImdmNBmWONbbABa0zJSP659Ou9h8ZQwxfsV85tv51vusxloY5NvWM3KhsjhSwpoChfiN0ucQkxz_fwaSMQzpfyKbE1keSBLyTFaY2-GFBiY923TM8V923PLMcRy4X2RT-i-l9Zw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/pH141fyenTFjNwqLfYxqPTSUbkolXL3xCJdRbNZkZGsJDWDf1gtomPHYQHlHrc0xMUXfiHT6n6HLwrrqUEntn8pNionezLEysBIk1C1wZ-j1AWEKjOCbee2bKH3ABvOpYSOhkfxHNZ3VhQTLcw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/4Ug9QSVDTpzAq35i_lIDsNZrsMfXmkIVXKogkmPaQh8eqZUMXAfXkwgsBpmn6Botdy7pq9w_t7OY3XZ-MCukVoM3FUYb1dEgt1CxyVdsEXkPSPvVrfSeGtHQ8orAX1JM9EQiQ3xJXQv9JOTYXw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
