---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/kF3VF4WGLnSvD3VCrHfIIE1bMe-ObeV5HOFuNXfZXZ4kvIK4DTPcLlqbRnSru2NlRBvOdkBuPI87EQyoVLjt3vyol9oPx1buZrN6B0VJ0bCciapYBQuGC2Kmo9YWa-tZzFVbsnqDBuHf5sZY0QUIGsJSy66SbGc07eVJZKuXOfjj2fu8os0SQmNE1o6g)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/f5f-gayYQT3MubbfrLfeAHCrKuGvVD3hyf3R_hqisCf2cpgipHDxvsYoVDEAO4nHwStRa4DsVBRDZUM83MxM4RotxsXZadw9JKwdu-_ZQmzhMXJSy7_54MQEYPKu2IhXaoazDXqGwpzzGEM78MPgZiRGxbC9PSWerdUfk_5P-F27j6ltvJM4UIFNFXt7)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/Qt7tqvPYnnkD5_N8wd7YIgFcheTHtG16XT-p2YKA_NVCUZoRjelkIWPGSlE6YbtqV6SENQNML9MAz4RkT0cGQuhz6Gc7Npm4REEZBnA-eHhIVW2Qbu_h6nFyGY32vsUtd8N_3tmfV5cuZ-NzODYTzGsPGOWjlA72ILrjJOwaOvvPaeIyTlzhl6zQQTfH)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/sevuAOg8qmbry7P6AUATfWAmQsJ2qvI7sCszLT96H9DGnMdUU7RbeP5uk3DuU4bc2aVzicS_YBM6sh_uimqc0EUKhD3zNmx9mIRjpdAEXkZ-ZCjk3W9NJ2FEuy1XgpvIs5oAkDpw-DPkjrM7lSMbrqzEj7mMRBObFhd-6vvSLXNNWGSrJKNbXpwjQfYv)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
