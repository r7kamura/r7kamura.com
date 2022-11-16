---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/s_Ls3DUS4cHd7pz2cNolz57EXCg54I-e5MNw2X5NO932zkWd4tP02rdjSNXWQXl8YtOKriOx-omv5nWmWVFovHA8mRnL3prCNLRy56BD8jPoC_WOmDnuBmj_WmO4uH97Fb9x0nbR4A24wrbQ94wN8ifoGw8GFpogbIy6L0DAy2YOaiEebjSRzIJ6h93t)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/vTGB7EmrYX5Y9Zab5qDl3oTTmMVzAXQ9FeNbXisRxc13Zy5GxFfeF02YokuPlhJ6JU-96MybXI1rNFuVu_Fh5bcBMgQJLx4yfDE2henE1ATZIqRzJ2olPmUhQr2m4rKeW3jVXyIJdLS7OD0WZ6Q8SOOf96O4OtZjIDtqJUisVb48KGc1CKwlHkKSZZ-q)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/9IIg1Ov6z0u1JB74iTmDtKfI8VM1Gep_MNpb5LkyOz7t93N1oydbCWMS3X6nzDt5RQjPJNfqkubEsK1syAUzydAiWVefT76HX9gsciFsMQlYcbeWmRZjJYAowkV9fWuFrVKk9K-4Q_Y5cHmxdCuc52oEKF0j9Cw_cWP8BSmnGAIigbTjKlzR3TskZSic)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/UPmvh6-C6y78z1NRDWqFrnmJKCiLt3QIecrI5YvTO-RwInYVU67tEOkibhxEVNNu9dM9oyAqpBHvZmqNXNSS6Tt8y3kAOEBXICxeWCIW-SMDBM-01d0PyfmkDRO3Y7W5nRHo9N3cxOiVRnLnZUHPtVJA1JkvBwJrpNkQpONvpnx9D8TYTL40q3tkI1M6)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
