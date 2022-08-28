---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/w8bMqdhVbp79Egb1dTL1eOtwnqVnPcjwa5kT6vHIXmr35d7lcJLmlupnhn0HyzTkgkw6P-MOY-DapY0QlQOAFkbqzQin-rjip3FvpLlT-blHOgK6YHjpPGi_62GKkMJzWBeZyHIRM5dYlvqJ12Sy_g)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/ESxJM08DOkd44qR91TTqCQ5SsManmOPYj5wbZRL-RfRqMUBovFWN_lvEhPio3COPmp1sjrnY1iKqR30CgUCayv707WDhyN-n7Linl4XMHg_5cX3irl51D6FemUcotG6D9Dm4T0LVhxp7bpE3P9N6uQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/E5Xqn6t33BdNNONE7WACiTT1ZBA5-2QKUDBwGh-G-xJspPc6drlkWgRfvn6Ic5bO9NC4wZO23tH43S7y7KprSGq-Dj8kQB3SgdJ3HqZnTF8-qRoHMuRLoeMYYG1JaphliSZZ25BzjYAV4APHRsk1yg)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/aSv_VIVt7IoEPnw0Vu4zMmF3Md3fjfUpNo_bMAR73tAlwwWGL9qTjupP1i00isjpHm8nLu7DpR6NI01ELzWQUdt8HS9logIE0Lu29UsIXPldkBsf7pgAHubW4hHqc69f-pn-L5Czzz3xRk-hxh5ZhQ)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
