---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/frSPOgtZGZov2XU185LQQe7_xao9fVXdih2C73qeF55H7J-ciOemzcpo2oFaTdIXN3khuFI5_VRyd-X8sAjLYO7FDeLaN_ihM7k8GfmSZImSYuTK-sh_vIz7FQg0SnkWVWVFQq36Az3hgLo0sq6otF_7PXihLtPFqaqXsc5iS2qE9bcRWuYZQwL96sQ1)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/mqDGRslIobyu9sjoE0eWfmj7cnqebeRXfY02ktGp8CEXfkA6HC7QvS8YxuJg6odvoC4GpBai6uQECy-rcgsWb1078QHP0dX3wkPvCGnH8ZTZsfrJFByfQ8h7l5oA6vf2i1uwx06nvN6_qIasy8WtnLXebdBTig-2dQPiG3bnCBBbzCxrVEA1yey6iZUu)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh6.googleusercontent.com/Ai8w0vyQLNulyUP9-QTiv4Fnk84ozGO0ERGrZqUhjOv83g6RtfdPBKM0sIpcHDYCZN4w_I_8wStZxqrTVYvOZYp79q1QmfjJoiQRjvlK0lMfV1Ish6fpuKgTn5MIqAGXM39EOARR1IfTL78bCAOfGAcU6JERSUlX_VMFNOktDwTfvbZpuEyPFwsukzTF)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/cqb3yKQ-l1ttpvg1TBQyZpv86FpkY1uZrzIQPW5JXy0I4gxM79din_pi_cPDDS3S9G3s7yBjBXGwFANDmaMbGWuDUpCxa20L2wUZRR3W6DP-RO6gAdJvtdLjzjbN-N_x_XQtH0uZvDThubABDPVkAFXP-XgZUzbDOftEtGw9uH1x6bOk5Pc6MuR3r0Yg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
