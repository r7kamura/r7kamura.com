---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/olX64q-3mqKZ48AdR2hfrI4E_WPqleCJJYzg7LCuu60m3eFklHR9LpowTMlI7HXG3FDA7tKDON2-VkzEH1SCyIHeiTPHq6lawpCJb0MLjcpORFD97kn-tzCUvw4lgqWTPoZuOHdyvBCY_8yyUlz0oY0ej4kFQMozr4CQd5j7xd5tzYm-R04l9TYlkA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/6bkQ910uyhvKfUBSbppqr520ED9z78V2xwoZOCm7rp0i4O0TTk9u_Z66089MS9yT_UlZahHajeTUEpXyQy18jh0f0PpE6_UWqE3Oeey5MxHShdQ_gNCaKb3hV_4vLFuV0gb6KK2bu1wKr-6SfGyERr4YhHFcfZPbzCPfk8kPZ6zF5_0kKoDdQJZ5SA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/JjRoR_Mx5j7OGQfvb2ygxToGN31-ANpFDc8bLZXY_GZaacV9r_hgb7xCve0cnebHcMcK196YhH5AXkQiHvoV3k-hGLoaqlwRGeAEK6h5y5DwD_hih9e94UDG9dUgqCrINbWzXPtsMOpeowYWNbH4SfkjrDjY9gsMfeynx6r8XdPM3__ckPAy_cDokw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/qcczynvwCOMW3atwiMoOdxfnp3vuk-yhkdqGx-hZWoMaeZarLiLK71zLSLqMNKYnqylYjl57hgBPyiVdb6_dCIh21PNN6is_0ECO22CN1Fxy_NA1hnSbzMPYHyuG4128q04yAKC1tehaF0YzR3cGkOGTn6v1qieUF3gYS2dRVIerCyNbWbsEonSv2g "配信画面の様子")

![](https://lh4.googleusercontent.com/_4NC07HiROnwxq4ZYsNoaQuL-7waCqK5lDy2-cs_ZB-1IEN68ssGXGGCp0LoH3_HV82blDJIqnpndSvrs4BZVJX0Fru9_komPAMCL_9c7GGgAEyyDCLHiIZiojJGlSqRnH-YBdhPSOMhg9wmZyEqLCBG3FruwW0GspKKnwK77GzCBLhuT922Z47aiw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/OcrZ-2CpIF3pmjp0nFCBxnCNSaY8vTXHpqBUBby4SDGPtexZrKlbFZ1zDE1z80DHYPg0cvWjgmfeGecr8seOtEG5NxZxHBcuPYLpEwod6DlZW04ZY9bEEzsuKhYqZnYv5wQcSrH6ucSa0nVo7biKLOJWehqRWCz-R3sxNwsg4qOGVGjcF_Xd6TR_lg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
