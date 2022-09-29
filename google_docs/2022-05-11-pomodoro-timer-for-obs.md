---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/3hb33MruduGhPNJPzcJ9nANFTwWMLkxt2DLmjmVCxv0-L8ytUaWSPXh5vtlnWNopl0g_fumnqrLT3F_-PMDVIPVOnzF77ey-Wvdz7VcoinH2vtXLAg8MFTJVYullf-p-HRfSuivyCWiF13GvB2-sup9lpvjbKaOXvK5dSCVfGTBE8YuHT3zHi3GV)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/tYkQncey1OsBSX2akLKdL--3IcZY0O_Jej6-eZdXHrUnD6kJ4pl_1QsI7a-Zn-AXzVfBCOPM3VoRu7Tm_aTKBKVHLNCp3Idvp9I4xPLkbH7mac_HYilEZ4GiwFyTAXipKNw5NqtC68Tjhf1J4Z9lNi5qtm95JnhxoBge7__xJPODs7z1dzj17Sit)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/_UnMFdCODn16deVhtM5BkcqxEpccZ3d6tfF9BUJ-EAZka6Rk3uJ1g4xApP9NTIqXCLg8mZK0pQ9JygHYqTL0R9C8GmcoTcneZn3BIbHUnKx3jvt86jpoTwkEhaOWk3fNTNzQzHBr3sTr_1MOa96MBQCX4D4SNeHM2g1JwVchSc1WIU8rZPMIztyM)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/M--DT9MQWtDtVqZPZgLqnIZ8ZCplzfXImkPi84SrYCsLpQtxmPLm5VWxOC5LJvZi5r0OdzYcCbGVy8dZQT9spdQg7ra6GPM3oFuqUcSg5bus2_74_0WcD1GyDRTi4DVRD91iOW0gE4ZhDdKyFkJ1_FR0mjJz6cEBIH29FQ3RH60PitRe_GIUUzan)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
