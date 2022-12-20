---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/Lek9Tt-GLX-6yaCENCVapuh_LtnccJc1yNQqTAuZopuuWUBSM85_JsA4YG1_S-wKpOwKLgRMwyFDm8yL8IziP9N_kBVJTgJu0ZZbuYJOHMlamypqaGBTNCbFUtb8qembE3WnEBmt6GVPvQW0ToFTssVT6wwQLhzV0dg4wsY7rP7YPM2LmeZIk0r0MpS7wA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/9M6D-J9h4Vx6_Oh3V_McENw7KZAIAHxAk6wcHJU8DNPbWiDgUiVQkb_TgX3yMqLgbMMCSlx17eFjcx6vjAJ6cRA6SrbY8N_YgkV2yQkQ3Zf6LDvldps7KRRhfEAWDW16xZ83hzdAmeFti7a4w0WVcFuSXJQwAQSFNPrc7zzqgLaoWRJWHK6aJclIDVwY7Q)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/XrYS5UQW8xrqPZva154OH97SufrRt4y9PVAyGS9wZmmuFDF9aaYEDUwFvCDbr_iifn5X7uBh1fIMWhlNHkIoZ3lfp83zux6vuEN5H5T4vyyV_2Szn9VKpYgwzsGBQ5aF_AqpRbYtFLstIRcHP-RA264ShK7D7y5-FmAAdCHxyzUmBjUT7_LZt2USsn7stQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/QjnzQIrJXXsn7ERPF5gGca7J0t77rvZ_ymgiqiCciMPniE79c1hTpoma7gyoifiQN3Lt-bs6TDRppAn_TE-Ef7RogBrccoFENJ-BSQuOWxk7c04OartvcGk6rtsp7KUi-9AP1z52pljUsOV799tFzPLCdTYbgevz3Sk9_ayQxuNEaAtZS_O8VOYEHFxk3g "配信画面の様子")

![](https://lh5.googleusercontent.com/fNQ0W_wSwQnhlIFj2-GNhx_6x2RI29LeEXXquR5X_oFzi1wu2T_c0zxvMls7TkyVT2TctvdJiEJiC8WG3Gw4K4uUuaiKn6EovofxKw8ViRxcDMr14ik6p7NveTjdZwzS4_PKfI-g8Lo8bsrto6G_g76kAz7T3BdKN3k5jtE6Knz9-62muwKjlQPZU-2osQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/VaFVPh360ZvkENxzW0yOG_uKof4t9SJinODaAo4B9ZXHiOeaFE7RZz1nCQjrZsNhLO4sQy676xg1oHFu2Dz4KqCvFLEaut-AJkcXbghfAmomwPQiEyq6yyT9uXArjTm9UdlhAYHraeOGW3jTwwWCpcF00z5n49iqAMYSJYCDCVUivn6RORREhA-igLqLzw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
