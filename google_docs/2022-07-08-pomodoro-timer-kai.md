---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/-9pajO8AOcbSZJ2OdwG3iZF-UA5iMamXcG5N5q_bY5z3ORyXFdfvI7WaEhsYU1DsZeU3QnYJG1WYHLHAouiRKGcyk77K1JCoDQMW75_1mXt4fbZK_YzxSgjjLE3W1LnZw3L2BkMcYOGD1ndJz3NXWnGfMUepuyZzjiU0IQ_ec6hOZhnriX3bbRhofw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/fRaKNJk2r4TeMHPguLRrqncDwfQPCIbdc-wu6rXM-glPD_8QDuYZnaeT_0y8nbPk_R8zbEpZq1Wz6upXHSEUMZo1FLhodOoIwTJye12Z72nvrGoGJat5PlXYw_Se_hV5mOKxTalngQU7M12Rs7ZR3KI9SCPyl5KXcSl-nEIX4q9HbOVSrUW3SrRCpw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/Au1EJMUjDvJ32gQry8xOHFOqzi8pwMsWEtkl_mEWgNy5EYe_NesKA8WAqkOiElFNynujCyvqlJjfXK5fIU_oy3jsnpJKva0SaSOvUe9-R49NbzEZeRZUe6LQiL1Fq8i0-d5LeBE1kQAU7ubLO4-jiu1JszWSfBJ_QW5O3brZtlZnbv2F1D_1jnV2Dg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/RuuqU7LX1BHf-T1QwtU1Xq_288-OiXxs-6dEsfcb_ar7nnpS0Unv6jMRsWStYdK5jhicwgOfCOrzhnOiC1E0OwS2VC-y27ciR2CP7mp0J1_TjMTLmJYq5XT1yN3hYbjjgTpqnZfCl1SeFQ7VmPCgU6NoAnnLgsoSlnxMsBdWJ3vbfXADmXR9mbKnNw "配信画面の様子")

![](https://lh3.googleusercontent.com/v_eStgfsvoaVv1c5phzpcPFGwIgitMklbsPBSCo0oq479QeECidcZz89QUdoSy9wiYBmzg4gPxlIAbs848PpqronsT2aEA05MmS6uMQP5p6jV2AipaJ_zNu6RKGoiCcdVjDZ4PbPfRWtmcVCPE1nBDiT7pQ_lo5HRBRI9egADdlEAWvcXM2ot7StEQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/XLWzsac2CBHkHqCSLPz_4rvDtlN65lclb0MeidohTq8hkH5maT8hdG0gXOzztKMyVVdJ0Vk4ZsO3rJrt0mkPRuzLR0yUK0dWTBGMK9ur0cFTEmaaeGrrWMpUbGpELuvu3_47IOUJB7lEDxGvuh4aIHBdFn6iEie2zG9NfJrDZ0RKVbPGwwZshD1t5A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
