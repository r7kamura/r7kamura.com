---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/F6q6N3DqhqIMOqzF8yBNNQuf5YvGd-oBegp6B2fJxPcJk5H1zrsqkiLtyni8Hm5uP05Ih7Qtg6-35oylCBPq9Sg4z0qy8gBMR_iBqTKLZoDSanDsYsXQQlGhturlMzZWDSDaDIJC0VjsK9mHCXLrAifODE3W1QWSUTsveIuENoDoko7kP_1sWOdda_jidQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/wqhYvypUMLzrFow7IVj8ZftnasixeVSI0byWNeFCJ80DsWnUB7iUrh43cF6cK6YzSLDoy4N8egUAlrCyobHRVBaml98jDa0vLB2EgyFRSt2dCNdDkfJ32TdbiXZ0B_yQEJhBe3rdcqZrOuHM9QgImQJaGcloUN0nWVC1878-p7gupwgHxNLtQZrhv3I-Ag)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/mEs4enRnu4AeBfr6i5fBz3c5jMOFL6UxJ0oEPf0iR1nfKDyJ8eij1FZhYEBw_MRQl11Iiz58PM25Z9VT5bKxVHbEZwAw-eoO7FakORws8iXrayUG0Y2gz7-d8BrbmbjuGrnbCzO1nkkIhGeGscEKS0JAt_e5X30F2v1MtVYP5RgOg48ognR3NzNDFJCmoA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/0tqzlyx0MIJzQKljhhWOzmbJqEiOeKLmFpEAQGjRcNP34thIMzVz7xcWBCJL-ZQRSj55zdvcn2zoV0Sg40dpfh_Tr7kftiabj-fEP8rGv4dh3vk40wzsdJv9WF0Jy5lYz_dtO8ZeXONaGlARIXq93e-FG2FV1bAAh7Q35hN4d5PI9D_vGbnZysD9mK-VsA "配信画面の様子")

![](https://lh4.googleusercontent.com/6rz3qPSpiuOuvrfD07CZ7nG_sh96Hh94zaIwNEaUX_D58rETEzq8DkggskKfQBjyqtru3pckM2MYliX6mYnij-CT0zQguPn5NRvo8QNiJGfPpcPnrBRW6Flwh6WtFEIgyr7ov75StWIbtCEQH2y6wTI6ZGs4_bOvUQ6m2QZiHPEDrOsMTS3hV06B2U7blg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/YVZ52rZmw8_MZCXAfk2ZaI7BiF7RFWwGu7Hk3o0iVESgJBmdY03eTk27P9CDLp6-RMoSjPiVojdUMk2udGguQqYEIFS0HdW5gsJDiehk7V26caiI4Kv6N9IwtK708EddvdxMfY-QMY1g8kSEO144oaiMH0CFO0IMFLLULT5rRKqDRzADaeQfEdD2Rw7hcw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
