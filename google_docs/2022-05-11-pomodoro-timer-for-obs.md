---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/cqHpYQDwR82O_4ck2RB8XsMD0WHphtKVjj0woV6CLmLrOuzoLMAavGs7fsziZntrXR59XISS50EstviXv-wvB0Ac-5xmdmB4tPoZCNqQG2yq6XV8FbFBqipqwbo0RMpEvOoS1j5NOdph5MfSnS6QraY9C1vmZAJ6sJWk_IwZaY9o_5hG6WyaUyjXeZys)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/pPFfQRRoxodw35oeEzJc2oWNTM9pm0IXQNSHhilm0MutggvTtfhbXfHLZ_sEFyq1NPw7B97Ln4NccxYM4bo43phkDh0Ne3td64Ph_aC8sIt57fnVRsVrRZsqY_cTaEY4ZeiO5TKU8lBMHKOJMWWzUZprw9F74SSF4bBKcpYonG7vNCLLHghz905b_1BP)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/0mSe7BiVQBb-Opjv3OZBJSr6PF_FCVBbvMtpYZz6AvBG1MzcQReAiTpwQcURN_KuK3JKvHk3Fcb0tFNdNf_Om4Io8NyrgNlCsB2PwYkcNluf71nUNYXFBchaE_zKmSNsoa06-p2r--ts9m2yXcL0C8lkcixGyGIq5_vQmau8GxAh5KpVhjaz2wif5Oya)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh6.googleusercontent.com/S55s5kUfAqBDZn7UXR8t_LW86B9xs2uzjxMOOR5r1ZUs6G0rnE2s2ZBEKDzuW_Dj_5vyx8p6RnrprnMK_4aYiKXrQH4uC23Q3ciBCXquSI3l1tZgu715aTv_YC5BY1_anxdsTWAVWHi6P_E_Y0FDOk-L5EdeVhMrOi2HyQxZ4IfNGICqCwK1iADplhQo)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
