---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/tgpFnBA-cIUAkm3bmnDJSbgKvpSSwYhp7r10koqlzbVIjNmDqpflVdcZwWU_SvXWd9MQpEsK418zlnvv-w10caMBzUiaWwYn5wGZ4hBrbuusoArR_H7ZXVPlTiHBWXvikJW8PtIz0DlUqx6VGuhtbis "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/O61KMD0h6YNhB1aMS8K_tdKlrglTVc5nFgj_3CwwTgIG8Wzj2L-QC69PtE5KcV635zB1o00rfIy7OHqon2_KzQfhbFIiC-lu3nbCd-TCQhn4hsVNVbk-zjj31kOXfncfIal7-31CrsajqnbGUaFObbM)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/t7kaMBBWaowwoas-ey8gZwDMgf8fOkp13a1556uYUbjh4azW_39oCqoj84O1xwYu1eAuV4FyeMX4uptuO3o7_6HF8NAKhAgthM3-KYigrXPVNbZiFmJ0TZ_O0YhwHjNmoXCAfIH1_y4a358egwPiZBo)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/AylwoSvvBxZHOKOtURNzinoQLiidDG7o947URPDSPj_QRHu_XNX9MUx6L0DYwCkhZ8vRkTEBBzx8X12ps-oUWYGRp0RN61iF3WcgieDX8hpqoajVYnHNTJhVbWiHtXHfU6TGFyYiWogA6nyK_zBFRTY "配信画面の様子")

![](https://lh5.googleusercontent.com/TWd2B64ND6GEevzoEWdIj-Q_Tl7DFfsCN3PVqHoy36VRv3uyTcWQ8_bPhGh4SSu13rB-dGxgtlXbq6QfJXnGgcsSbyuGmuwPY0yuL-jMhB46W-7G5d2-8rUGbgwHDCLl5nPEXxaarLpVcOHYr7b4yOo "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/NR0PYa2OQBvISFr3ei8TKT3WhGGj-jqp8pQj9Clk6XBarUv4gGuPwkLqP382lx-0TH3Er7uHl9W1MJ2n5Ytrnp_SLYUlSlo50GddYA1hG5-D0KlOcIeh9j3YDQFZJF9tXZwW9T3ymgR2r0ifAuX9bZA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
