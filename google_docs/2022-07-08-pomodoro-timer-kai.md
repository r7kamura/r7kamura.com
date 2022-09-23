---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/7YjI1AF8qgZhCpTUE73LyHHBfN5IRUJfLoWSOVgh-MheOB6o2beO8mOLBCu-vYd0Jh2IkZocPMNc3oUQHTl_jANrcQ0ND24DIcG-GuUMEKg_ChFMlg6MySl6shsFE6E1nV1ztH3cf2OejK6lKSXPVAbwsVnCHTD9-FJ2SMnYpIvhx4y6VdfEja_hiw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/pzfa9_6djGvuYEJETFa5YQwCa4bTiyrYJkXFQepzQrpqeMf2ZVrEoCOT4xtmq_nH6TtmYToSW1cCjUyXHUIWckFzAZrbXiPt3mnr5BxptodziRDzD2exI41DhyxcONg4H85IcXMoF3o76KYhxUQ-sRRf28m1O0faaj6G4SffMKAPWRiZW8EjTdDchQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/6kjZ_nAwcQSEaOEeG14Hbw8uuxSCSqC_sU2zHx_ZN6Qb1Cw6QAi1JDqHWn-I7We-GUT04PROJfIXRN1CLzfnY74a4kG-sDwuST2_UKFZb9iOC2rXfEyIRYm6nDFV5bCoSw_nxKbikW7d4rC38y9ztY308o5-M_qrA8FNvoid8lcACk6MRt5iw4aadg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/_uy1qNt9beANGcN0ca2yB_3a6XQ7YSRpIk08IwUOCQqLnBXber27eLwhEQpmvmRMjdKIMsBFSxJGRkcMuEAKSxrYaSz03N3Cm2Day_0Qb7IkC9LM9z0PWHO9b84fbDDtG3GwFYZSo6YfltCEf6El6vlP4HE8lQOywSP8LBD1BWxHCsNRQRCsj6m5kQ "配信画面の様子")

![](https://lh3.googleusercontent.com/ak7GODqMVM2gtM6g8HO2bdMshWNMyX_57X-nhyaxFol1UcrQy65tYg8VQdvJ641yPvPvqeQOrav9yJT9IyB6Y6ovs1kdF4VZq7Ul1Red6AFC6XN4qlAQLEBSNnYGzshsU61ZSFg__uHPEQdQDEmzelvgatcqY01m_d6faEcU_dleKqg6QGq0AIE6yg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/n2obdr7NmIcUlkt5_bv7qbl5dehbn0shmR4U6x40fNv4WSqIErTpsoD3CoyNVQH351-e9x8k5sMs7bh5omtHgVYlcs8advn9lQ3OvfAn-NbuZklAZTFHiQRJhYNkdCFynE_yYZNEN-LMetUB8zo59-fGNKJBSii8v3b4Zcz19yFZc4XnF78vYs0b-Q "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
