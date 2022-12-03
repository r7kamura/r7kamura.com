---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/S2w5y9F34YR_qvWLHqdY8PlbehSE5T_Pj_ECOexgVxhiRyglvIcAlaN61laR_Spasb3XmykFToUbwTRJtbqlkDkJO5wCvosw_4hVNsfplGNNRIe_980X_ZZnAIKwxvgfrvCKD0fJNvZ6nfO4YPyCQk7DrZscVgbrO_1DUR7WVaEK1EL7dB46ticbvSaJ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/oqXRDjhNhzK-M5iige3Vx56DKhKrSz3QiMnWD3UyK9ZP0M9CuMGrumsQ5j9EyVDbf4IZfc8KcPKbx8tOHbel9_dcxKIsvvbIDJ9wlnkMGjd4X-2Q_BzqPPG5--0UsyyOTOr9cEdH2QGKr9maP7JBLP1hOXuk-b8DK3hy2Klush1qQTF32PUrLwPMNId5)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/7JRWI1w4GOpYaA-6pCUZhCwNHWrsHIrpOvq9zmzVe8wiU7aMncmZDiZp_8F0Bcfkj17NQu7SCEoojYXq6IZgzjMb9AFnOOHUOXFkdP4DWwXZ2EXqP-agtMfCv1V1eNO2WV1fekNdCZXXnLgc2NHJDCYZwoQ-eJf8QuSC2R2vbp3Je9tDwRwJNrIpreL8)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/cBaxiF6i1JivZhzUL4VQlq2CJpfMY5ck0p8kb-bDi_9HqwufTZ9OZnWhsxt9Hgz8qrlqbxw4qSm9oQ59jiXgyAV7sjN5ZNCmij-kpbSpeapMfmv1PFYfd_viIZZJhWXTlpinGWLYaDJGZkRYkIpN98oz-hZRLk44gnirGdzGQomlRuV4kpkwHCeLCrzl)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
