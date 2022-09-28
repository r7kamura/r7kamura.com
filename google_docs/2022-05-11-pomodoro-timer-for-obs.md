---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/28pJ9Pm8IPu6DbYIkmKNI-YwD6Czeq9WK68TLXlLaBtt1B7THFdW3vFc4iD_cXpbaqKdP2RMjRcmTPybwG28RFE_o60fcD_ZAdEUvSt_Rx16tX0nmsMmd3UC0ezrqsb264fS2QO12bp2sfTM332vOF9Iou_2gh5iVQevTBgkttaiaWiMBUVaa7o-)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/AU_ZW5Ah4k2Jz5RQcDYDtF76D7cpAOy57OjG47T9I5dGPOosalYPdE6i3jrkAc6wieqwvkxn8z4opKPsRGEe_CTLQemV51_75cyyaNR3iCLIKTaq-2sE2vmROfkH__kLRkrR7ytqhFpUnLLPzYO8upEnWekGgONsANU-TvROjBD4Sp7lFj3ek_TX)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/EuebVX1G7kyCfxWWZUNynkJXSSVqRBifrN_qml7OJWjDL8l9QlVhZ1OrOWpzwLLulya4BUhZfsWz65EVeRf_ZEupC_JtzqoPBEsEU3dVgAMhp5GygOHzvh6Y51ec7fA5OtchSGNI0om8zU60u7Kb8DLagD8-q3z8dExBMmg7hrnKngtC5Jqh06p1)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/wPw7XxD8vMvQgBDJPqHUEgLSFSxF-eADecZ7eJmmsi9__L5p8IDB5FwLUoUwj73ijRfN0wQnWqpWDoRP2h5xn3sgA7lL0Xnc7cd73GnlKsCQTAiRmBsj12a8jbkd7y5_c1DmAjUMAAUAUZeuy0nbF8S22-tVECvIweMBPD-oIgGf9fG0mN7NVvoM)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
