---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/hM3EOF5pK-84sol2VDfAjIM0Dcy_qfYmWsU60O2kCtzf0cCq1Z0v_FAtxLFIoscIEhLV-HlZSX7C4MMq9U6noleplZOionYudNXWDq9MX-6cgHu7bH5ppKfhcDm1ZwvF5-L9fmafVNu09ONn2w)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/g54Gz-buzV_FrjtwK3qcsBmrdE2n8JQsJLeCcWRhl5xnYIMhjpC5H18TqtfETXYsYH6NZf-A1SP_wl_ckQLcGWXqYOlq2FNwoiyQeSOuUsYWgTTWXwfeW-lw0DM5MNFZ0CBZeZyJ4-sz9OK8SQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/Kx5aWpSzY5OwPCHIibWp-8yVI6iVIjw137IZNr7xQS_jYQ2vNzDDWoHpQXqdIBdKRaPz3WfBd8OUyQ7DitUuMeOEHnEZccU1Hni_rKZk1VjKUZf-Y7yIR3A5qsidyWJp6MSFWnG25IbedhzGQQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/We2Ov73lTPPgsOfH6KdJoiOp5mc2E8VVpWfSPbXT-A5t7I9Ax_-bY7jZ1iTtLfv41GOJ_0sTcH6EOoQITZYAJT-Vs0gI6i7lhjWAgCx3ZKInHTpEU7wUNZuY-WmL3DFrRZHhKp6jTXGRNuBXxw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
