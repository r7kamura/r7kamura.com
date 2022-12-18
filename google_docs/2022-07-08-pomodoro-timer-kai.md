---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/NDyzIl9Qhe1B4FkItGT7sVC2T4Zm86whvXW5a3TcGMHmXjnDcd0C9oK3GZVkUDwCwyGSV7TgSBuTZiOkwwLnK89ll9Z07CWhdyKw-238noSFUNrkNoRSijxlb-3MReSNvm7CLvyEkojcq2SLShFNGnzjkyYHmT0hoqOV1eZKmjucdl71k2JJpfoPi2H4dQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/Rgtq4lvqWfwUuYixh1VaGeb-ZjgWVPebDYDf6XeH8l0svtcWubXBvu5rL8ZSunJhay-JsBltI6WQrE28a2ypzuF4pfCgbfBui0wtLyL_igXyNy4g3dQjgEPx9mItrckfIGDhNNqiMnEXdlFx0hg6dJ-CFouDEuJPZB6O32iFcVg53Bs67ENTZIIVgCd8NA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/ydYaukk5CeD_qrDT5UxemNvM74KQr0oQQIMA6p3_sk7uCr10pNZK-ct-K_3I-zrJM-u_0EJAGayKz3Y77Msqfzz_Uoy7peo6d35x_iqwij7QlUsh84dlQBlTyY1PyOSvsi-vebYigczG2ZO3otlPZLPjRtPkOwTTyL96jtquZ_qPCOIba8dSmCKBtUTinw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/29XqGFgHKRy8lYsGLz7DnjNG3jbd4zhB7dMvvE5-DY93u_tysiowfV8nt_yy_FvNRGJXkTDL3z3mL3COZjcpgQq-84PLK0X1TSUwhHl6eXap4Y-b57jahTqa6T7c8vbwB6gDerulXTD2Ykflrsy66w8p3K3DVORCbaD6j8PMIYcU7mLmTgtTeV9xldlEDQ "配信画面の様子")

![](https://lh5.googleusercontent.com/hARWzOHIZjJOGjtbS8PfGqOUrnLV96HQRdLiB_R-7acclXmFJBNHYnl3XXvurEG_zZg56VpzSwGzkBPlSkoFaHwse5wFKBsaXdatihVbO-Fr0kUchw07AnGej_zJqQBBxQwvTyZ3EZnaLefJUGsg__ZFZ2Rv5bdFvJUftsswUdvRv2CtJnExcSt_0APPqw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/a5HhyX2vgtyGJfKkC5Wn1MXAZI5K6Sokek2m3dN7DacvimAqJ6gzgiN_YcoYeTG72jHvIAWwfYg1XH_bmrri89dv1uP-NgmXLn11L8b7aijYnIzsdy-3omDouNNY5AEflbTfeKPUUHcaCixqxyAY2ZeI7gq2dKpegBLrpdkM-5KDSm26CZivcfvrCp_PLA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
