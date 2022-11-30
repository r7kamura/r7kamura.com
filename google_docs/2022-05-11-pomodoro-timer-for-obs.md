---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/Wlp20a7Z4YOKbVJgU0wzOlHMIzMzKf_55bmzEXYz02SoAe7DbVWZ5__zNdYV14m9_PfGb_ak0bSe9sQjkRIg3f3tfY8UZhYK9wBAFDtKeKSeu0HwPUwZeUUzAQjYFSka_CH1WaHICZMwl2oAjlq88rAKWEI26FSBTSEggNA3yKQXcfSz2JQCEn10l-PM)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh4.googleusercontent.com/92QGQk_8GXmAnMl0rMefdIugR77einWVaknzd6w-B0ceuUHz4abrJ_SwPf4YcELj0tlzl8TccBcsL2TqHzdWT0TSWoHz0ebg8aVXDKX5UQTrr7_hW9ypJChAjOkOEj9WVhHI1LnikNlIk8GiKmvy__yu-PlkojpWwbYtwA3F9EDuBFfjZgLldp6R2Rkj)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/NMTwgqyvwwIUHcD9n1n_kvCCPR8Q566m77wDUADcJbgdqRscIl2KLMFl1K4Y1eFbKouYhhXJXZx07vOCkXkddp98IVw78vGOmnZs_kUFIB33LzwU7b-VLKlB682MsHiXca-bAGeM6W_vmVOSkMrnKSq1TrAEEzo6NosVCdrmTXEj-dK4BwdYO3ZaWslo)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/qng466nj2kSfoPhHzzx24CwYhYpcAO8AtYGl-zCQkAISJnr150EIZomvHvneLCsvr4b4VtDcJ8vsld_oJcgEdPtZ9kxyPpQHpBAr_oRtxnNUeSDLkCqR4iarehcVXOdwR5zF51kscLNB5LGUV7fIqRTopDyBZ3_FySYCMGuqzzuw-d0MdY27bkO-eRg8)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
