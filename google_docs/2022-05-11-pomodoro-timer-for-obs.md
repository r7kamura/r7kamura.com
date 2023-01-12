---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh5.googleusercontent.com/RYU85ulmLVxyK-VDuBwSSmfUVwMdZBFTlKCtObUqQvdsaxWgVlEPHT2770CWiLDLVycOosrXaZjh7Z5WPY4kLELP0ZsJI_sieHQc5uy3BotPdpTIfjUud76VK9yDACivSCu-FFx3Z5d0sfw6FTjbiSSz4neNOUO0PWjAaN2eDXSlMmD0buY74uDbgYCY)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh5.googleusercontent.com/M5HPpFSGitqZcZStUG-3oIzU61lAfz5lnjrUm9jC9F5LHU8Bd1BF-1Nv4GXcd2Iyv4XwqqmTD8gjTNRoe04-QrOlslSWl4UhzGTCnlO7am5xB3gDppxuxNXcgx9-Ku4YpTHcX6dB99G7RNaF6cgXKLTmK4jK7ss0GvWokecZRvesgtCvtz2PtGFXXb5f)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh3.googleusercontent.com/FW2rzAtoO9WDVscnNceByckXGhGomw6sq3DP2FVxckWfqRKD7MkmVo_otkcxBr3PjUZYQf9XqMBf-5ASQ57mlVCkoflsw0R2LnzUe25dosVmwjQULCQRRTK7MemdwLbD-uJI0GfindYz2yBDKKewFXvBqfl8b7qCoDnBl-S4p3KRZ2Bw5C32z-_sGrLN)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/I-9KrKiVsSfE7kS16MdSb182zM3h6wosTt_JlfJK7WshLL9-ZQXc9dubv6BKXEh2fa6vLJrN30ISQDSRZpws2qESVhG2DDkihqPDGUK-6KAIKwdjgiKu15YqOXa7x79InyYSY0TKfpL7O3MBake4xabdrdNRsFkqptgKXnUDNSJW6VON2OflRnNhVAvr)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
