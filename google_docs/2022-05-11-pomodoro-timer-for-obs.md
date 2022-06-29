---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/Is6_NF--0jtOFvdCNZ-22oYfJqd90q_GicTCwgIZlAQE4He-thul1jxLl6hviZ2uuVl-AmokPsA5Ygch2nfj7-zBntsSJOsZmLzqJUUrYq1WNYBXOBt_ePxJ00tPmAyGBktN6P6v1NiOVJBXlw)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/p10_yCTbQOYl0lURqtA6VVEP9_bo2TFPViETpLnAIefH6M1w7S0rMqETtzJkvCuJnfq4rPTqKLOsDuaVs-mYED5b9REIBWbf2uxa3jfrV3PT1B5PsUJIqEgjFRu2jBfE2wMRFUDgEyCQiTdvQA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/7Zqh_pwmYt3Vhd-cEkxu6Yv_gTPh1XeZ7zCjInTX1gpnUSUFx4ZW8UAT03mmEf4LxRpPM7W66Hu01x-0X6ekh_j8ggNxW2Jg0m69JMmtVRpojFFGG_csLwTCP4WzYeKJR_4D3RPBqGA20Bc6kw)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/MTaCijMJ4zr-ZzVJvLoBHIFAd5FEd5FLcrnfgrENh9qFzvK_NEAjMV1xSWs8z95zbKkzjQB3jUVTt1VW9jKLbfr94Y-HI7QA8V4_Nd2GzoEAQNqt_JzH1G3brvST3PUlWlH1nmqJMZQ138YdKA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
