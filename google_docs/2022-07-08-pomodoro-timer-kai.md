---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/IFy7rT6ocBLCHn2hSblAJqP9vZQi7h--_HSCxfR4wD8fpZ9Ep4qISbBtc-JlbPF66FUTFjjJ5WpmQPEVhqjGcKpGdGyihD_oRwHOVBMmil3Wwf8iIDY-aol_kPn1glLWc0mHVx6d8KzdtqTffY4aFfmONokXO73l7PR0_HoZC9PTiXGIm5X1dUiFwiUXHg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/YBCO2ZUn3xpSI04LcDRK-I0l_03146xaYUt4zEdsaPT7U2YOJCTRnnGjL3nvXP-gKJRpfr8CfXibTp4v-j2wdjwgS5w04d3Kmx8i1AicUkTHMzjPG9i5p7eDUhhzG2-mf_e9QX4HxPoZiULCkl8e9bhcMhbChI6xDTGjC3IlJJyV0SAZSktpFD2B4Krvzw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/NB8pjUhGikmmI8KwHFUST21s1LePyPpfQpMziesDsA_SkkiIUdPtx9UmRFpbTqNNKjs9VYXCLap8cmcTlQtdIRDFd2T_lPiuVLKGyrzseFebgGwdszNSPZCQJd3tZmux1IKLbKEIS_Ig3oVitsDRmaZxSpIPGq-JHYbB98LwVIbktaIGAxVqk4kCxXLbtw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/fxlPwsfs-PiIglhmuG0M8ryjT2WmafVURq0o-JjWKEaIfBjq6tDT9MBUYCbDpFdSAzTdLRUWPBENCjquGcUhz90mVaffg-vTTGo-nuZ03hYWJmTuSFC3BLtuMsXmxm8Ao3PD9mafvx-Bod861FaONigdO8J1wGOYPvni2_bhB91HXx4yRF614Uk2B5U7CA "配信画面の様子")

![](https://lh4.googleusercontent.com/4323T_WyMyRVp50ZXycliiPf2__KvtolL33xakzmApWNXnOWJrjXuHgXAvRLnMRXKUyhCcxsEcT-NDAlAPynd22s3zviwybbEOd6XxRVIvk5vk_ctpNrPnIOtltCCMu2zNBGW29wBzR304_KnOSLs2Q5NWbvSzrs4f7X4h2Cs26abqXl8osf6TzvV0JRCQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/RBwofz3lCF6kQ49Ms5Sda62lzbgmJQnIJAI2h8MMfKBSzbrE_0TXnb0UDSltpTT_Cfdgn3himitKozn5xoa-tdtQU2wgv_3xYZ6-zOrLOI1Zo6HwrqasJwZ3qCkx7HxWmYdkL77Qfch4PMy07JDY8Nsxz615mEWYIJGk4KrKrBdLVy10MqsbdEH5Aq56RQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
