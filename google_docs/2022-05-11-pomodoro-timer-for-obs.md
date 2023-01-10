---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/hIWnQq56Xx1WcbX1g8_rKPlPO4GUZ5vXYC9AD5-ptKwrDOQSf_XdHVqPbZx0x8IhKaFwutI7TSHK2vpolEna0b4RN02dIUdBB4KGnNqavpEh_aoPwb6Wy7F0Cb8ikjb1MYNa-34ep3d4EQJ-7ySr8VmgorM1ZsTZi0IJ7XSBCcA5izC2WvHmYqyJmXGM)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/N8zypy_dxy7bXrvyhTN1xRHyR53e7jbulmSJsS9nM9RvEc2N_a7NlXlVsd1HdHXQMSVe5aJxEE4iredVG0uDsCl_NhP2yM2fd4cvt1DTMjAdECXewl90H0bvI5CSIuaAlSx9jpHfBToEQ0DV-66mf5XlIeYn3d5ZEqyDGEMiLiwEGKEus4r5szM0rtoW)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/1QqBXvp784k-yWj3WRbSFvik-Me4xDnxqDT6Av6abplunxEqQg_IH5i8x1_uYTn7nLFzRzNxOnO1JcR-cShsx3JvonzSfYMj5HTCBSXr1V9DkBafZlpeHzN-GL7XpNjIqZ_WUEtnVS5gIS46jebODH_bFjUmLQx-6igeglOYMa-BXLPnzd7r6KCm4d1v)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/BkqsfZ-tUUDqQk7CTVtzAs0YlukceAA6tCC6ncyYB8_tmlD7xTaWnaeSMcVUePPO5UiDA-lDEg_ioVPp3yfjkAzEQJU11LPCTn9zLq43LU4zrRL5LCRnaBwv_2t0BeGOtpiMpbqG__r8ntSowmiN59B_H0U7BMVO07rFn09_dK0XJiY55JjTa39FIcrj)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
