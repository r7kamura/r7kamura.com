---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/ZLIVfXiees88AIoAYMtAe8BGaG0qKc9lC8mMXytDiqvuKL6B-j1WN68vUeXSP40gb456W3bwhk24488DYzSO4VIyyF25bKunld2d8KB--c2w5RdR2puhC98pY8J369WjqnL_QjxU6zONMYrotoZWvpBvl1CCwYds2uDBSgt1XXvjoJCAnNLlMW1S)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh6.googleusercontent.com/JCG4KGTTXjFIQlUQjbz4XoYm2do_KST47DXfRZ5fI9IKYjV3OoxX7L__aPh0T7Yp0oMYvV5-YYqX6VoSTCaYutq2FRaTbdPclT9PvqaWlGh4rg_mYbkfx98-PGUDyGQywmfkfMJgBraeZKNTku6bihsDVBmMYDOX4SJq1jCM8yHwy8NdPj8r9JMS)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/OtLQNhyy473cjL3ScQ7rP3lFBAEQqMv-84WQG0-q6EbKfZpOa__Fv8sT5t94QhxXg-KWMcI0MP6DEYM-WU7DWh56stmSB2We32fobcuvnpBZqLZcMrZAg288ptYeviqc9_PrmFUq7cPWzGDgaq1duSonZzu7hqyy0RFlVIeZquO_Ixa-a8n2OTTA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/atjYcFdzwsFDfaJHf2VHGsxnuutvu91Z1zmr6M-mFb_Q4oUGwwmgu-xFNdBreb5Y-S4sLCQi_w-ajc5LAvGC4h8hP3mC_BflYm5-5wsXTsSLJrKivSSDvyTes0l2BNdcXwbu00Jvo5OUNKg36eQKjYOy7cvReEuTk9YKV1HtDf_gNr6h8BvD3Q0r)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
