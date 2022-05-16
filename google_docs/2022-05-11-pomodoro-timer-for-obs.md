---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh6.googleusercontent.com/k6vwdJ3tkOfNbzdBaqfRzOqXgZCp3YdI_u0G16wbVZuTgLfr9h82QCxLk-WDywboTWa4JOp6N2gE9Zws3tACK_mXHYizLu74huMlU_yHYJBN7YVBN5APqGZ3NhMths7aTKKc7lOxVkoR_uPRUg)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/KVLS0Se_tWWXAIwJabmQ6gdOwGxZBFB0gkfkPC_oTSQY-WF32lBaL-t7Uq0rgKZLB4wt_6lCRIJnKxHt4-Z3yGcPqhP5xc6HwS7lVAEw4eHDtMl-gc_-kjjG4MpAbjPOKCaqNJtzN5Q1S87ntQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/3d5sj_4pb1whGFechRlzF1J1GW8mnSNTE4FX5x6t4dVYE__OznN1J3koe41wF1_ooKlbCJo7j0XvsTOqsi44nIF8_pdtsDpGOwKb9AKNvaKURthoxsKkbcPKECCZE3YDrQxF5xpZaQfuyzI0mg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh3.googleusercontent.com/0BFSwlUgC_hOQQ4Jzf69RCFcehw7RbNhXi6weWbwyF-mVChJxYI4IRbadRbtjFuOA4tLURtlESwIBUUAhQd-NTgMCN8NiTgww4hG1GYemPyek0iEmImhGU9KJRr4zcYAW3U5uFXjj3zvON-qsw)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
