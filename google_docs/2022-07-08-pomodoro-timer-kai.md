---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/Nw7CKNgyC93wo8u9Nb4keeC3Ps-LunKVv13t7RRNI4f7qOafmNO7nOZIUUBRe0D8uDEvfwiu0JKAqSUYi-Qee1Qy_8F1OGsnE63xHt4p_DrgdyzpYrHnlrkoX0e43mwtqEHGVMUlmxclywMKHmuD0mLWdv8RVN_mMqZzNvv1q1uDhaFGjqqgFYZzRzihKw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/NJbJcqvEfUPRz9tyRhzyd3arihyRp_v3L4de4_jrEqHhY4fU6kfinLUB0S68_FHxhqSgOh2z_ORn6O-y3Y96HDCDOEAenpSecaXNmsjcH1vVwFvukcH-dRvHSxyAZD5DnInCifLAfJQ2Bx_H-tu8sGvhnSI8R6Sc-83pHnfe_GnXduKhndsSWgr42iNjCQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/jRUdveZS8TeseiegiLb_vJYGiZOlZCQGqMDBaipBJDk2x5iGGcIqPEZRJBVjlE9CkmQ2RPsXllirPezrMj-joUqR9dJBooj5vBDA2TVFggkB1OePDqA6dmS9i99VHUWV5hi-zfdnhNKDNanSm2JTrYR2y8rxQqSaTg47iE1V4IviF1-ptbZL-xViok83Jw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/TTelP-GzvuXb2kbKOI7KWjXLB8-eF4kmjCo5lbAQbo6DRz42OxuPsqZnlwAaH6nZrBDYtu5Lc33eiPzW_Zf2isa2tGfJFVRYHBiKAma_v3mVEiPqj_BePV8O1KvyH4jPwV2JaFwWtnqJzlmsDmcaKIFCKx0FnMFAfAqLm6Q_bv5XN95LYIrqSACuX6csVg "配信画面の様子")

![](https://lh6.googleusercontent.com/97ufX4ETUHvg_4sHRo7k1src5iClpJGrm_tjeXfoFiY8UO2B661KLhR3hT-1kFtmIcCY4zAHidNg5DZnKEeRZ20fz517elbrWnXqQGSF6_PloZfKDTKZqlbKjwN18lize2FOoIxbAcSVgRBXtuE8_pOjwKCEvD2iZ5q7PMeYt1NVQz4Z8H28ZG8kYLKrmg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/LZmhktgF_hNphtm8hnrG-i8-LhMbgJhjT--9QDXAYQOf8WxiK9mGfPAXhFF-K_9fDOHqsf-whkkyjPpU9mZh7l5VPKvMa8YFdzu0iMh611JlbJlEHhK6jul40A5z7yCH9Nu1LVTHoe4VSFEAveNqP7XRCmvKkp5J6d4vc-DdLWBGWfH890hqAXcx7FEf8g "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
