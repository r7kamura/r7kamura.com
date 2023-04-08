---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh3.googleusercontent.com/9t9Zf_-yGXGeJlQg3EpLp_llleRMNaTExxijJlp152nKNPdTY3tvtQBujHRgGdb_Axo6WaYLb7D5UnvA2B3ibwtXOtx_5rbqHgF3ua_70EmT4_KFf9ZfCj2fXnOsXZ1HIDSTFsA_Baus9_QgKhY3fQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/G0jNtvZUbxxI7c38XPE8AWiL8vbFTNHbkX0Hi0zuVI1KsWcijNiEv4yRW_85CtdC35h05a0pENIBfSPWb-fMtr68PKU3LGJMRT45GGn39E3UQHpSidOVez1tithfLsubXPuyqwOnNxj-afr2J86KBQ)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh4.googleusercontent.com/bXU9bLPhZvMK_g_gSS8rV8tmFayhE58CH9xClOOrxGFZ1qlii00vKdrXcnsKjTuWeV0rL4OQ7VFkUiL62Rs8AA2R2o9jDCfZtO1ZRp2B7XAZb_o8ILj2HH-yChLFqZrU2spSiqn2cqfuO98ttHNBGA)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh5.googleusercontent.com/m27jBpmtySgwbGdvcq7gPHGGxoEkkEAHkCsf0egveWoXc6kEkFkJVBYVrpwoSRI9g0Jv9nYNUgQAZ56n0ty3Q9sN-jPs6ZTcPPiL4qvrbqFTYBqMe_vHZWgNhb1lDc6vDey6PS0UFAYSfLK5bJIK8Q)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
