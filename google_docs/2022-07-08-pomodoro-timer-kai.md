---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/bYNzIM1DqYNmQmY8UHQksxOTFG5wz7lnDzUXEjRdYODFrmMhtFdVf9XvkuFtpfjduIVtWUw473HTwtEZxBYaCJEJcrvYcqHXvX9_cUO0zXi6UyduZMp7xkB-7JYsEl0YCEtmXIE3N7Sc2egQcx4hqkeuZGMI93xFHm20UdZ_t_1tZFn75F29kF-NeA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/IbtcXQKGr0dTtXPoZdKItKDZSSNa_Ix0d2DqC0K-A2bPu8ioqO17Dpp6TX24C2OMX5v3ms2wAwaimWk1Hd3fXj1NVGaSIkEO1RRttWXph_2PC_eDJNqZFLtHKmyUocWFiWz3GQc4x5IjbWMxYJcCBpcFo09Rjq6DPVuXAUlOWJr6OBu_sE1cQe4zZw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/wpiw4ImqWU7JIdvTNEeP1CNayLQoPj5X06tMprM0BHXsEUz15pn6IpPx1iibF6MSmjyGpH35ak3HtnhUCYb3RUtzOSnCVrIJYfQRZ5VQ089jzr6yCYs7vQySLDIzG5AcF8t6t1OMHjVonL2OTHjb9YrZCa0yS_Y2iLps0Cv9aCKAuXVNS6LKHtOz-A)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/3iZXfCySrwv53EsOKe8923V2pHL0PMZ3LrAen2KWJ0ZDj_yoi7iCTVZih3nfZH-IF6BsFad_ULh4hgwfaBwZqsvuP0sqKZyUM19yH_8PhEWTEuPwsxDyXQHveX8tra895hm5p3P577DUk_anvp3PujYE_voEur-fBeFZ7FjvAXbJnkVIjXoo08Xq3A "配信画面の様子")

![](https://lh6.googleusercontent.com/7Jqq8WhVtvDctfnspNfqxDJc1o0RKKyUWFwXBTgMXhUSq8eIx-PO62DsCBiRMmbbTLolmzwMtTKtSeKMQut71hKg-5W3stTGHrAkq7MCml2UjceNvWcIzdqviouIH44fOsNR3xSS1MXfBGEn9SHVMv5pjqsFFHwWzuDsA7-8AuJimQbyBCnsbtNtHA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/Hrub7kum0miZIX97vFk_gd1Bl7lV4_nn8qVtTSzMUhJs8TjVTNDqP8QWSXqOVzSAfbCuAigLZqkiSmetUhazaOClsmI_P7gh8a_d9ShoHrer7Xh_4ebcp5g8uv55QbXoIizsIpoR1x3-M4lf9qE48WfXxkdNUkWL1nBeCRgpciIeYNZs8I7m0oprOw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
