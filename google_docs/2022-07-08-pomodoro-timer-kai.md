---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/JmwsqAYlCK1l7HffKBkQM7tyI6zrqCDAAwRPfmq9_tTtWDJmbOo0yTNLQeVab8yw5bleaseHj7tbWrPCcIyULH8b4pAhxdoVl2-EuEZG-ZWOK2qnI7DrEiAxI4UH1oLKdHete43kkiWGX64er34OZfxONWjNKZXMsXXKTYs5BCGbnXyFOr3Jt7MFzl1UpQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/Odvc9kZeANOM1TslffbDEVAqLwcUUx7TV1AuTr3a3W9-124ADr4vXmCWJAckchgBKJJZEA44EYACWwaIjtr-lAbMlABw-TdnrmKRteCsBzxnpxObgXgnmIqaJm6AwYtbA7_ilAfvkLP835CnGUZwJbcgwPe0-nFTIiLEr0g39EqGjJbwbs4Rygrqmq9juw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/qyfaziZ6kIxeLvGOY64d5EelzDwdqZIy4JskHWIiF-OSxMjsA3dDSGtPqK68Uq9QVNPpr55eCce-jQ53mQsXbfQh-YtD5XzUMZWxYtpEqykpwcQvs_nUC97aasdlG2CuJ8YRHvepfgy9eGXkVsd5dbPguE7DP7MT52iFF1lS6gh_cqhN-Bvglq6c1hj_6Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/yjh5tg50MTm3pNqeikfNfrIFzDX7ETF4A87FBWzhOkqiKSaRHx5puFEyrB651tIPqoEcO__5zrEXqXFyja9n5iQEA7w0NJ9xaBndBpWi9qw8kbA716PimGLjXIWhY467DrvuHoU1Jkl-bty_zn6yqsVsytAA5S8y5aEKmFCcOjfgO4F4g_A67M8ftWpXsg "配信画面の様子")

![](https://lh4.googleusercontent.com/BBKlYh5SiutkGoaop0XzDl5hcyIGrFmH_cR1Iq3v2btlZ8mgI0Y52lNbXRXznqqIT5f4xMTtie_CZ3yopvhzQSZt2caPCBbO178o3C-kqqKndH8m62TV-dytr3k2Tj8lhsnm_0sWFkbB8OH2kmk7k96_iv_p9gHtG4wCs-QsZN68A1vF-g4LCY6Hcfo03w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/HLtcnzNiJJtH21K72I-hjmPRhiWf63TAYSY55-8Amq61Ae5sqqRmIa0q3W8H4-ao7x76sGpdAnDlToPkiWvbOAeQRYRwaI0AZCoHKbQBnjnmaPqAV9NZxc_04YiOVrr_Jf5Wh1yP9PGT8PZTrJ5f6CUe_pc806_rvJ7GOkvD155HO-mwJd45_OIK0yuO6w "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
