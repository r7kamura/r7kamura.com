---
title: OBS用ポモドーロタイマー
---
OBSで手軽にポモドーロタイマーを組み込めるようにした。[https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

![](https://lh4.googleusercontent.com/8zKAq6eON_9WelWkkcC3aABMdJtSabL38UFHA84KZiLh3669Bc2gq0WltFZ45QPUnYXIx-c1TWmxxRLzTyP0gZv2bvi8oMxiWzojmWG8SE7wHRVqwCEJLiBth7UDCVK2cWb9A4YV3jv77s67CQ)

どういうものか
-------

毎時00分から50分まで作業して、50分から00分まで休憩するという、[ポモドーロ・テクニック](https://ja.wikipedia.org/wiki/%E3%83%9D%E3%83%A2%E3%83%89%E3%83%BC%E3%83%AD%E3%83%BB%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF)用のタイマーを表示するもの。間隔は変えられる。

タイマーと言っているが、自分でボタンを押して開始する訳ではない。現在時刻を元に、自動的にいまの残り時間が表示される仕組み。配信者と視聴者で一緒に作業することを想定してこうなっている。

つかいかた
-----

ソースとしてブラウザを追加する。

![](https://lh3.googleusercontent.com/N0aTKEZYT2f7cyaUsjd4yLT5IB9zvJoEXP4ZVFGjZOtCY43uuiMFqvUCvyYfq1MFfRLNG5Hjcgr2mvNCUG38tt-de0Tsdj3c_oLS9ZIqo1mtypgT_U8t8srT7ebIspE7EUBKtTxn5cxWyUQCuA)

ブラウザの設定で「URL」という項目があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html](https://r7kamura.github.io/obs-browser-sources/pomodoro.html) を入力する。

25分作業 + 5分休憩が良い人は、[https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5](https://r7kamura.github.io/obs-browser-sources/pomodoro.html?work=25&break=5) を入力する。

![](https://lh5.googleusercontent.com/ZzUKlvv9cnlbSmAggQVNTkynOHfybMyaRmbJANrOk0c6ly1R9NgX_wT2rwkOoEFLOY8uysu4NB3PDWXOQ50HcAgPDiO9NaJY6s-uNcjh6TWZpCzqOasRWd7A60vTybCfRz2LQrKSqvM9jxjpjQ)

これでOKを押すとタイマーが表示されるようになるので、位置や大きさを調整すれば完成。デフォルトだと作業中は緑色、休憩中は赤色で表示される。

隠し機能
----

このタイマーは、シーンの自動切替機能も備えている。

ブラウザの設定画面を下にスクロールして、ページ権限として「OBSへの高度なアクセス」を指定し 、更に「Work」と「Break」というシーンを用意する。コピーするなどして両方のシーンにこのブラウザのソースを入れておくと、タイマーが切り替わるタイミングで自動的にシーンを切り替えてくれる。

![](https://lh4.googleusercontent.com/yomFm2tCWpIkh-0_GrSGv21n7PhyaatIWPp949gGfwmijLieLfMTyCt65-YAB4zG4sovxMtKYoh1EnL6Z3--WMYTnjtsT9YwPNkRZvwD0Fvm9c24PyFV4fRGOVe0uyCS_h9s5nsCXkYApdIsEg)

おわり
---

使い方の説明は以上。

このタイマーはもともと[作業配信](https://www.youtube.com/channel/UC5s-KpSDGzxWPWNv94PnJHw)で使っていたものなので、配信のアーカイブを適当に見てもらえると使用感が分かるはず。ちなみに、適当なウェブブラウザでURLを開けばタイマーを表示できるので、スマホやタブレットで表示しておいて使うこともできる。
