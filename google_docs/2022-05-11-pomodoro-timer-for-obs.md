---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/C5Tk1hCS3c561erbh0f8WYoUIrVl_ukmfMGS5Tu7cDYsDSj6rw5GbyHYPETI-Fr5OQawok9Z4rXmv-6ZPHcXSyaowrXHxZQHStJvHFbZb5jXFfmQb6hB3vb_m_dPnfaq_7yTxtgf2SIdNfKKiSB5SA)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/s-0TDmqZaYObRzgJytXhFWq3HSBniKQnTEuJN3Cs1HAu4BgLWOB-iYsE2uVkhF02kUcYcCBfq5x8GD_85K91SUn-keJAayO3tKLVFJu3kx6MYAl4Io580hRA9T-0snzxon1QVirZgLiG2d2N1Fnvzw)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/A9aWfk3smhnEfJoVL5lrEgtxMv0x7mPirYygLTfX2Xzcc6yxVRO-qv-VdLIejViAtDQNFPPU37gzrAH2k6kY39uniMxDPplR6ZDRTka9_VUlV8BTCRM-I_SCtSl7G0mhyvY8b9MQ3zB9aCv2lox4JQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/nFk77qzQ__vVBHLG2AH4JMJ0OL8HL-twPz-zUXWhkUeNspjolOSnR-ItzT_DUwB32PdhkzJW-XXTbWFCoDKZr_EFNgA_5HMm3Ue0YvbMpDgQhRpRKvJ6sW5h7P1KKDy8vEdXPAchFOxKSEP4rRcsMA)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
