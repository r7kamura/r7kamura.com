---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/I6WlyJjLZ6Le0ZXe2bm7br03z2ly3Fyt67sXC05Ry_WF98SJuwTWeealBZbknm9HikhX6WnTnQ9_6vnHHqTVQOOtR8s6si-vY4djBdA4RzRRrhE66LPWKtLUH50sIM2rdR0XjV5-S-PjZc99lQacE3Ee0CvKJXgLnSUx1Cs2_ykrw2zILqI-qzcA-vBODQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/6WWm3skr-R0-sNIAN5aRfdccifDoziNOzQ3zNyh36aGR289xadUPqRAoYIQi3MyF-FwRDp24TSHKr1F3C-aC1irtYxh7C48XVFLxuImBJtFdTFHhanuGDcUOwWjTlKZkCOnenRJE7SSw33yem5MBk0N51w_OepPjM44LejhoQTg9R2FKBoycrUFF1yJonA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/jVN_7Lu77KKe53cvVQTI7mCs4YLOcG7XkVJlgju5p61yH8SI6t50ZdyhPY4t5OtaZbpBce3EQqBZW-K388ahXbQbeM9hiERQDydZGcEx3kw96T91psurHGVcBZU7M2jg7sQRnIzEiam98RhXP3kJrZDjfnIwthkyzBUbcv_KgOkgBN5c4g21MG0N62vm_g)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/QAtZ7uc_AUQaGgZdUws-BqQVD_7JyJQ529Zr7Gt0L0uViKQttOIxRQBlbJey8KCz-12Kla5rmWLTsXX0MTNPTrEF0T0AByXemvHS-HJQY3jUjMiyjtzqyUtGib4HYT1ly2aMgARGsFJznYm_G-PWQfQzXSLPfoJm_DBQEli7mVkMa5cZWMdhOMnwpvaKGg "配信画面の様子")

![](https://lh4.googleusercontent.com/NRN6vIin8D-WmUin_0jxyKHEUXdqWYDUdfb-4UoJgZk2TCWngFguRYSuYN9VTJvkrLvrMTl9nKc8P2oIjVChUY4QYNGgxvyhz4SxPx8CyT0aKe6PjVqrXV4m4UI8qXzYBkCeKPyM5MwXY-a-PE6R5-jvQ1qhv9MbZsR4tketTl23GYkiW1Ma9LaXjd5u3g "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/_N01eveBBbYIzJekYRrTB1DFQKZkNu0kcEHO7nusheqd4-8dBuv3ZGF7TDW4Oq3lhWLn8nEQ75d7dpGaT11CLJNkOENbY5RM0FGsIbl8w6wu0ee2-kWersnME9-ZLNnKVx4vN2TJDrTXc3iNIm31HHdPhcseQHOynt7A_yaS2kXlL86JL5GVzdS0PzNi6g "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
