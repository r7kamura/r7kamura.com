---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/sTqIUvoGf4j68z1ZA5Y52_EkidU1hUxR0HofdHqVNA73LxsuNOH2C2GS4XDsSiD2mPod-6m817kLDLHLCd7UZF8hRz6gxxJjsYZLvZLfxpPXJxWlliZULaTtZRg5pkRFaJ7ibjbedtEzbfOSTC-3EyXflVtL9OcSmsHn1AzYHGAJwfsEjAFJ3zAmyzM1tA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/c8jlgQUSe4osei_6xsfIwxml7mnooQtgHUz7ux4c5XVDkoeD1MYuU-9GAhHqQ0IYCBJjpGkyoGj4YIwyBTBaws53LkkFDXeuUPESq6nIsqpDsO-mxMsIgV1oL40P7kQdtqkKgD49X72st8bxWMCpmia9paZcLvpF9670K7_MLfW7SRmV-xKzaQvwum5fRw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/_brqcLPEviVntuuw0pz3vYJ9jr96MhlNvj0Rm8eNZJxMxXmNe7J3bOB0ji9iPO9QJpeUR7IyClonKeUzsChHlYlvqNXb9v9ghlQbpDnR0VfAouyNPEvmbXvJFgjtFJvqdgI6k6qC6gi1uHITXFLJ4NYV5cRLtNOlXdwpa2o-ItaxOPFokQIwmdQbP2gCMg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/OHHSBPJJeVFeG1Pyc1CVKnV8EHJH3xe1SLH1J2F3p8QqPhQ5sWOmZzCD7hNPu-jsl1qkjZNvdbIXOeVpxCJsrI2Y1K0BktRvbk9gI2H0yBikP2AWxzpTeyZFB7jQCdbr2ycLy5fbXCj-X-naNctNSCFG3CVEJkzTSJKZsJjnIdLjclBA4MfK2BRqZqfzww "配信画面の様子")

![](https://lh6.googleusercontent.com/pMQe0HD0qqhDPyceMNNKTNfsolRCp7RUotQ4XiY5coM3lAv1Rl810016gn-vfb3ucz_ePnBmQJXCPHDWOI1FpBU2DkTZCyU7wSNtzRhgGZLbNUuuRyzrOmiZ-diqFJUb5j-tAKNTv0nvH88eXFN3UD1OvuzS2yU8mrYdfVt9SCZ0iHAwG4DbmUDIPKMCOQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/TPPBwGGn_gPHL8phtkI3j-2MoQp_yJ5jXUG_brHFNotUBARIJUCaXM_4JVRW1qme0ebiGhJ3zx-8nTvO1CLG90rXmnztEHJ6xUVOLRZcHSeXjN4p-BuwGY2EUpeLmQ-_vaGtYjMY01e1aRfajLLgn_Ir-iXYjsJNaDFXXwPNQQ-iNFY9vHJQJAVzGqqvdA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
