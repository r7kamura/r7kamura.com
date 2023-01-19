---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/Xf8J8VXDwQagbCQ5LQqJb7n5ho6iZfve68DuQ2ct3Wv_ykVb0-it5X1jylVrN22YYDmzFe2q8-X-gFVYugQh8moDoQQfPHM5s-0IMX4Xt6ZhzVKrU1FRGbIu5q6hxYjblPwMOVi3NpJzY_PCmBFnrwYnw_S-ULlxSamUKsqhnSYlNPyrq1qTjqzd5aL9)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/09zElgXIbXnyQJ1PqYvKxMSvMeGNL_PPnyF_Iks38y6Ie3JwXoJ1p2FFgNK_aTabM9MbhgkyEwNkW0yrYIeNfLU96082jcA1qEqHyPojpUeLmmcU-7chTj-yukr1GOhG9pH7jMbiYsI8vJpCcUmblnXD0AyGazmtvBKmMhkbIp48P-IV9EbmGRebrCkP)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/XNEVCV41JJEU5uD6DaJsgsk7K432gTq_SXULD4_S1mnSU54bCKMMge-laRVf03Wv4AJOXF1prunYWl7m4Pzh_eHDhkPWldBQvpY5fhXUjXnuKMdj12XZYTSEBaFNdBpRtVZvLgNbABMQj4WLjpe8eJHMSmZuGkRyqvYuEcqHdNt5Nk8xYQdo_thOlHJu)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/AMy58WSF53HUQfRDydKM2rQIte2vKedatMiUiikW9jw7En0S5oaEVkgkItoVCwrsrssOffn1C2jIs7sdRH6ki5pdvtvGdjX_HgW_3LbHJO5FBj43R0eLxmpS5G2_sZzmPc0uC9o71K6Lfs_-kQWpOhR4zjs9ufi83NWX2On3aVaAY4OVL3vLxzoLHMlK)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
